import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../../../core/utils/constant.dart' show Status;
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/common/result/result.dart';
import '../../../../../domain/model/display/view_module/view_module.model.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../domain/usecase/display/view_module/get_view_modules.usecase.dart';
import '../../component/view_module_list/view_module_factory/view_module_factory.dart';

part 'view_module_event.dart';

part 'view_module_state.dart';

part 'view_module_bloc.freezed.dart';

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

@injectable
class ViewModuleBloc extends Bloc<ViewModuleEvent, ViewModuleState> {
  final DisplayUsecase _displayUsecase;

  ViewModuleBloc(this._displayUsecase) : super(ViewModuleState()) {
    on<ViewModuleInitialized>(_onViewModuleInitialized);
    on<ViewModuleFetched>(
      _onViewModuleFetched,
      transformer: _throttleDroppable(Duration(milliseconds: 400)),
    );
  }

  Future<void> _onViewModuleInitialized(
    ViewModuleInitialized event,
    Emitter<ViewModuleState> emit,
  ) async {
    try {
      final tabId = event.tabId;

      if (event.isRefresh) {
        emit(
          state.copyWith(
            status: Status.initial,
            currentPage: 1,
            isEndOfPage: false,
            viewModules: [],
          ),
        );
      }

      emit(state.copyWith(status: Status.loading));

      final response = await _fetch(tabId: tabId, isRefresh: event.isRefresh);
      if (response is Success<List<ViewModule>>) {
        ViewModuleFactory viewModuleFactory = ViewModuleFactory();
        final List<Widget> viewModules =
            response.data
                .map((e) => viewModuleFactory.textToWidget(e))
                .toList();
        emit(
          state.copyWith(
            status: Status.success,
            tabId: tabId,
            viewModules: viewModules,
          ),
        );
      } else if (response is Error<List<ViewModule>>) {
        emit(state.copyWith(status: Status.error, error: response.error));
      }
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: Status.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  Future<void> _onViewModuleFetched(
    ViewModuleFetched event,
    Emitter<ViewModuleState> emit,
  ) async {
    //끝 페이지인 경우 리턴
    if (state.isEndOfPage) return;
    final nextPage = state.currentPage + 1;
    final tabId = state.tabId;
    emit(state.copyWith(status: Status.loading));
    try {
      final response = await _fetch(
        tabId: tabId,
        page: nextPage,
        isRefresh: false,
      );
      if (response is Success<List<ViewModule>>) {
        // 다음 페이지 호출시 리스트가 비어있는 경우 isEndOfPage => true
        if (response.data.isEmpty) {
          emit(
            state.copyWith(
              status: Status.success,
              currentPage: nextPage,
              isEndOfPage: true,
            ),
          );

          return;
        }
        final List<Widget> viewModules = [...state.viewModules];
        ViewModuleFactory viewModuleFactory = ViewModuleFactory();
        viewModules.addAll(
          List.generate(
            response.data.length,
            (index) => viewModuleFactory.textToWidget(response.data[index]),
          ),
        );

        emit(
          state.copyWith(
            status: Status.success,
            viewModules: viewModules,
            currentPage: nextPage,
          ),
        );
      } else if (response is Error<List<ViewModule>>) {
        emit(state.copyWith(status: Status.error, error: response.error));
      }
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: Status.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  Future<Result<List<ViewModule>>> _fetch({
    required int tabId,
    int page = 1,
    required bool isRefresh,
  }) async {
    return await _displayUsecase.execute(
      usecase: GetViewModulesUsecase(
        tabId: tabId,
        page: page,
        isRefresh: isRefresh,
      ),
    );
  }
}

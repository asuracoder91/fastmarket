// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fastmarket/data/data_source/data_source_module.dart' as _i890;
import 'package:fastmarket/data/data_source/remote/display.api.dart' as _i901;
import 'package:fastmarket/data/repository_impl/display.repository_impl.dart'
    as _i533;
import 'package:fastmarket/domain/repository/display.repository.dart' as _i566;
import 'package:fastmarket/domain/usecase/display/display.usecase.dart'
    as _i862;
import 'package:fastmarket/presentation/main/bloc/cart_bloc/cart_bloc.dart'
    as _i851;
import 'package:fastmarket/presentation/pages/home/bloc/menu_bloc/menu_bloc.dart'
    as _i502;
import 'package:fastmarket/presentation/pages/home/bloc/view_module_bloc/view_module_bloc.dart'
    as _i232;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dataSourceModule = _$DataSourceModule();
    gh.factory<_i851.CartBloc>(() => _i851.CartBloc());
    gh.singleton<_i901.DisplayApi>(() => dataSourceModule.displayApi);
    gh.singleton<_i566.DisplayRepository>(
      () => _i533.DisplayRepositoryImpl(gh<_i901.DisplayApi>()),
    );
    gh.singleton<_i862.DisplayUsecase>(
      () => _i862.DisplayUsecase(gh<_i566.DisplayRepository>()),
    );
    gh.factory<_i502.MenuBloc>(
      () => _i502.MenuBloc(gh<_i862.DisplayUsecase>()),
    );
    gh.factory<_i232.ViewModuleBloc>(
      () => _i232.ViewModuleBloc(gh<_i862.DisplayUsecase>()),
    );
    return this;
  }
}

class _$DataSourceModule extends _i890.DataSourceModule {}

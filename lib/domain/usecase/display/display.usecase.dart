import 'package:fastmarket/domain/repository/display.repository.dart';
import 'package:injectable/injectable.dart';

import '../base/usecase.dart';

@singleton
class DisplayUsecase {
  final DisplayRepository _displayRepository;

  DisplayUsecase(this._displayRepository);

  Future<T> execute<T>({required Usecase usecase}) async {
    return await usecase(_displayRepository);
  }
}

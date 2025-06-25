import 'package:fastmarket/domain/repository/display.repository.dart';
import 'package:injectable/injectable.dart';

import '../base/remote.usecase.dart';

@singleton
class DisplayUsecase {
  final DisplayRepository _displayRepository;

  DisplayUsecase(this._displayRepository);

  Future execute<T>({required RemoteUsecase usecase}) async {
    return usecase.call(_displayRepository);
  }
}

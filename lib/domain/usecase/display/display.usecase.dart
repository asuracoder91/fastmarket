import 'package:fastmarket/domain/repository/display.repository.dart';

import '../base/remote.usecase.dart';

class DisplayUsecase {
  final DisplayRepository _displayRepository;

  DisplayUsecase(this._displayRepository);

  Future excute<T>({required RemoteUsecase usecase}) async {
    return usecase.call(_displayRepository);
  }
}

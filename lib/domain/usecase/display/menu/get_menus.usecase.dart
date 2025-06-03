import 'package:fastmarket/core/utils/extensions.dart';
import 'package:fastmarket/domain/repository/display.repository.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/error/error_response.dart';
import '../../../model/common/result/result.dart';
import '../../../model/display/display.model.dart';
import '../../base/remote.usecase.dart';

class GetMenusUsecase extends RemoteUsecase<DisplayRepository> {
  final MallType mallType;

  GetMenusUsecase({required this.mallType});

  @override
  Future<Result<List<Menu>>> call(DisplayRepository repository) async {
    final result = await repository.getMenusByMallType(mallType: mallType);

    return (result.status.isSuccess)
        ? Result.success(result.data ?? [])
        : Result.failure(
          ErrorResponse(
            status: result.status,
            code: result.code,
            message: result.message,
          ),
        );
  }
}

import 'package:fastmarket/core/utils/error/error_response.dart';
import 'package:fastmarket/data/data_source/remote/display.api.dart';
import 'package:fastmarket/data/repository_impl/display.repository_impl.dart';
import 'package:fastmarket/domain/model/common/result/result.dart';
import 'package:fastmarket/domain/model/display/menu/menu.model.dart';
import 'package:fastmarket/domain/repository/display.repository.dart';
import 'package:fastmarket/domain/usecase/display/display.usecase.dart';
import 'package:fastmarket/domain/usecase/display/menu/get_menus.usecase.dart';
import 'package:fastmarket/core/utils/constant.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDisplayApi extends Mock implements DisplayApi {}

class MockDisplayRepository extends Mock implements DisplayRepository {}

class MockGetMenusUsecase extends Mock implements GetMenusUsecase {}

void main() {
  late DisplayUsecase displayUsecase;
  late DisplayRepository displayRepository;

  setUpAll(() {
    displayRepository = DisplayRepositoryImpl(MockDisplayApi());
    displayUsecase = DisplayUsecase(displayRepository);
  });

  test('의존성 주입 성공', () => expect(displayUsecase, isNotNull));

  test('메뉴 리스트 불러오기', () async {
    final result = Result.success([Menu(tabId: -1, title: '메뉴테스트')]);
    final usecase = MockGetMenusUsecase();

    when(() => usecase.mallType).thenReturn(MallType.market);
    when(() => usecase.call(displayRepository)).thenAnswer((_) async => result);

    final actual = await displayUsecase.execute(usecase: usecase);

    expect(actual, result);
  });

  test('메뉴 리스트 불러오기 실패', () async {
    final result = Result<List<Menu>>.failure(ErrorResponse(status: 'error'));
    final usecase = MockGetMenusUsecase();

    when(() => usecase.mallType).thenReturn(MallType.market);
    when(() => usecase.call(displayRepository)).thenAnswer((_) async => result);

    final actual = await displayUsecase.execute(usecase: usecase);

    expect(actual, result);
  });
}

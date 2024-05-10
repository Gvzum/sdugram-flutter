import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/src/common/domain/behaviors/fetch_user_data_behavior.dart';
import 'package:sdugram_core/src/common/domain/models/core_user_data_model.dart';

@injectable
class FetchUserDataUseCase implements Callable<void, CoreUserDataModel> {
  final FetchUserDataBehavior _fetchArticlesBehavior;

  FetchUserDataUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<CoreUserDataModel>> call(_) {
    return _fetchArticlesBehavior.fetchUserData();
  }
}

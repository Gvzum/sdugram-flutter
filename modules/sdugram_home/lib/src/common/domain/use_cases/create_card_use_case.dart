import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/data/dtos/add_card_request.dart';
import 'package:sdugram_home/src/common/domain/behaviors/create_card_behavior.dart';

@injectable
class CreateCardUseCase implements Callable<AddCardRequest, void> {
  final CreateCardBehavior _fetchArticlesBehavior;

  CreateCardUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<void>> call(AddCardRequest params) {
    return _fetchArticlesBehavior.createCards(request: params);
  }
}

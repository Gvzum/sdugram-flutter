import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_home/src/common/domain/behaviors/fetch_cards_behavior.dart';
import 'package:sdugram_home/src/common/domain/models/credit_card_model.dart';

@injectable
class FetchCardsUseCase
    implements Callable<void, ListCreditCardModel> {
  final FetchCardsBehavior _fetchArticlesBehavior;

  FetchCardsUseCase(this._fetchArticlesBehavior);

  @override
  Future<Result<ListCreditCardModel>> call(_) {
    return _fetchArticlesBehavior.fetchCards();
  }
}
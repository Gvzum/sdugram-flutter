import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_chat_detail_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_chat_list_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_details_model.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_item.dart';

@injectable
class FetchChatDetailUseCase implements Callable<int, ChatMessageDetailsModel> {
  final FetchChatDetailBehavior _fetchChatDetailBehavior;

  FetchChatDetailUseCase(this._fetchChatDetailBehavior);

  @override
  Future<Result<ChatMessageDetailsModel>> call(int id) {
    return _fetchChatDetailBehavior.fetchChatDetail(id: id);
  }
}

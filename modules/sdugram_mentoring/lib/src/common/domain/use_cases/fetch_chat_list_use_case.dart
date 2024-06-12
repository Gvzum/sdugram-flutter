import 'package:injectable/injectable.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/behaviors/fetch_chat_list_behavior.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_item.dart';

@injectable
class FetchChatListUseCase implements Callable<void, List<ChatMessageItem>> {
  final FetchChatListBehavior _fetchChatListBehavior;

  FetchChatListUseCase(this._fetchChatListBehavior);

  @override
  Future<Result<List<ChatMessageItem>>> call(_) {
    return _fetchChatListBehavior.fetchChatList();
  }
}

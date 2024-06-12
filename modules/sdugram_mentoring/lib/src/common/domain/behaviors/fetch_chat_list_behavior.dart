
import 'package:sdugram_core/domain.dart';

import '../models/chat_message_item.dart';

abstract class FetchChatListBehavior {
  Future<Result<List<ChatMessageItem>>> fetchChatList();
}

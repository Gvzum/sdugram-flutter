
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_details_model.dart';

import '../models/chat_message_item.dart';

abstract class FetchChatDetailBehavior {
  Future<Result<ChatMessageDetailsModel>> fetchChatDetail({required int id});
}

import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/src/common/data/dtos/chat_message_details_dto.dart';
import 'package:sdugram_mentoring/src/common/domain/models/chat_message_details_model.dart';

extension ChatDetailMapper on ChatMessageDetailsDto {
  ChatMessageDetailsModel toModel() => ChatMessageDetailsModel(
      messages: messages,
      name: '${participants[0].firstName} ${participants[0].lastName}',
      avatar: participants[0].profileData.avatar ?? kDefaultImageUrl);
}

import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_core/src/common/data/dtos/event_dto.dart';
import 'package:sdugram_mentoring/src/common/data/dtos/chat_base_dto.dart';

import '../../domain/models/chat_message_item.dart';

extension ChatListMapper on ChatBaseDto {
  ChatMessageItem toModel() => ChatMessageItem(
        name: participants[0].username,
        message: lastMessage?.content ?? '',
        time: lastMessage?.createdAt ?? DateTime.now(),
        imageUrl: participants[0].profileData?.avatar ?? kDefaultImageUrl,
        id: id,
      );
}

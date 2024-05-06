import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_request.g.dart';

@JsonSerializable()
class CreateTicketRequest {
  final int event;

  CreateTicketRequest({required this.event});

  Map<String, dynamic> toJson() => _$CreateTicketRequestToJson(this);
}

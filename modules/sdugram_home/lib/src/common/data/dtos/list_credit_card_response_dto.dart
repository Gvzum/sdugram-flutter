import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sdugram_home/src/common/data/dtos/credit_card_dto.dart';

part 'list_credit_card_response_dto.g.dart';

@JsonSerializable()
class ListCreditCardResponseDto {
  final int count;
  final int? next;
  final int? previous;
  final List<CreditCardDto> results;

  ListCreditCardResponseDto(
      {required this.count,
        required this.next,
        required this.previous,
        required this.results});

  factory ListCreditCardResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ListCreditCardResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ListCreditCardResponseDtoToJson(this);
}
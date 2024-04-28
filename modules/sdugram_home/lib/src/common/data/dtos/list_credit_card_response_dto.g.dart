// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_credit_card_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCreditCardResponseDto _$ListCreditCardResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ListCreditCardResponseDto(
      count: json['count'] as int,
      next: json['next'] as int?,
      previous: json['previous'] as int?,
      results: (json['results'] as List<dynamic>)
          .map((e) => CreditCardDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListCreditCardResponseDtoToJson(
    ListCreditCardResponseDto instance) {
  final val = <String, dynamic>{
    'count': instance.count,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('next', instance.next);
  writeNotNull('previous', instance.previous);
  val['results'] = instance.results.map((e) => e.toJson()).toList();
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_credit_card_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCreditCardResponseDto _$ListCreditCardResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ListCreditCardResponseDto(
      count: (json['count'] as num).toInt(),
      next: (json['next'] as num?)?.toInt(),
      previous: (json['previous'] as num?)?.toInt(),
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

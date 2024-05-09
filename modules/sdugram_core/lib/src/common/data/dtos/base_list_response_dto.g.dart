// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseListResponseDto<T> _$BaseListResponseDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseListResponseDto<T>(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$BaseListResponseDtoToJson<T>(
  BaseListResponseDto<T> instance,
  Object? Function(T value) toJsonT,
) {
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
  val['results'] = instance.results.map(toJsonT).toList();
  return val;
}

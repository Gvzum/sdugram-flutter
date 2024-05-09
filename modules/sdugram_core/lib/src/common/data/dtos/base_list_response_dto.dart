import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_list_response_dto.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseListResponseDto<T> {
  final int count;
  final String? next;
  final String? previous;
  final List<T> results;

  BaseListResponseDto({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory BaseListResponseDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object? object) fromJsonT,
  ) {
    return _$BaseListResponseDtoFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseListResponseDtoToJson(this, toJsonT);
}

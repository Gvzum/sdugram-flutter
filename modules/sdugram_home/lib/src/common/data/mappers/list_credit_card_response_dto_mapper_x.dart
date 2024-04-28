import 'package:sdugram_home/src/common/data/dtos/list_credit_card_response_dto.dart';
import 'package:sdugram_home/src/common/data/mappers/credit_card_dto_mapper_x.dart';
import 'package:sdugram_home/src/common/domain/models/credit_card_model.dart';

extension ListCreditCardResponseDtoMapperX on ListCreditCardResponseDto {
  ListCreditCardModel toModel() => ListCreditCardModel(
      count: count,
      next: next,
      previous: previous,
      results: results.map((e) => e.toModel()).toList());
}

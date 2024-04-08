import 'package:sdugram_auth/src/common/domain/models/token.dart';
import 'package:sdugram_core/domain.dart';

abstract interface class GetLoginTokenBehavior {
  Future<Result<Token>> getLoginToken(
      {required String username, required String password});

}

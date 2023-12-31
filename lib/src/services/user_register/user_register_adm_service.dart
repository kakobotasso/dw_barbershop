import 'package:dw_barbershop/src/core/fp/either.dart';
import 'package:dw_barbershop/src/core/fp/nil.dart';

abstract interface class UserRegisterAdmService {
  Future<Either<Exception, Nil>> execute(
    ({
      String name,
      String email,
      String password,
    }) userData
  );
}

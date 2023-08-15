import 'package:dw_barbershop/src/core/fp/either.dart';
import '../../core/fp/nil.dart';

abstract interface class UserLoginService {
  Future<Either<Exception, Nil>> execute(String email, String password);
}
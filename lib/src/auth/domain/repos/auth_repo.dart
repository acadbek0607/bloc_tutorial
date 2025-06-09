import 'package:bloc_tutorial/core/utils/typedef.dart';
import 'package:bloc_tutorial/src/auth/domain/entities/user.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  ResultFuture<List<User>> getUser();
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_tutorial/core/usecase/usecase.dart';
import 'package:bloc_tutorial/core/utils/typedef.dart';
import 'package:bloc_tutorial/src/auth/domain/entities/user.dart';
import 'package:bloc_tutorial/src/auth/domain/repos/auth_repo.dart';

class GetUser extends UsecaseWithoutParams<List<User>> {
  const GetUser(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<List<User>> call() async => _repo.getUser();
}

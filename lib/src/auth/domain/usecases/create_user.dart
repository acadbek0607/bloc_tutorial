// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_tutorial/core/utils/typedef.dart';
import 'package:equatable/equatable.dart';

import 'package:bloc_tutorial/core/usecase/usecase.dart';
import 'package:bloc_tutorial/src/auth/domain/repos/auth_repo.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repo);

  final AuthRepo _repo;

  @override
  ResultVoid call(CreateUserParams params) async => _repo.createUser(
    createdAt: params.createdAt,
    name: params.name,
    avatar: params.avatar,
  );
}

class CreateUserParams extends Equatable {
  final String createdAt;
  final String name;
  final String avatar;
  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  @override
  List<Object?> get props => [createdAt, name, avatar];
}

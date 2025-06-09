import 'package:bloc_tutorial/core/error/failure.dart';
import 'package:bloc_tutorial/src/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

typedef ResultFuture<T> = Future<Either<Failure, List<User>>>;

typedef ResultVoid = ResultFuture<void>;

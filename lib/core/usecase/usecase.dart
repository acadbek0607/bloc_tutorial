import 'package:bloc_tutorial/core/utils/typedef.dart';

abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UsecaseWithoutParams<Params> {
  const UsecaseWithoutParams();
  ResultFuture<Type> call();
}

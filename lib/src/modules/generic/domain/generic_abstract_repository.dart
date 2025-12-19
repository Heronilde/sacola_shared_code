import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

abstract class GenericAbstractOfRepository<T> {
  Future<Either<Failure, List<T>?>> getAll(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  );
  Future<Either<Failure, T?>> getById(String id);
  Future<Either<Failure, T?>?> create(T item);
  Future<Either<Failure, void>?> update(T item);
  Future<Either<Failure, void>?> delete(String id);
}

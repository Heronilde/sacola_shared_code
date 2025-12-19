import 'package:dartz/dartz.dart';

import '../../../core/error/error.dart';
import '../../../core/error/failure.dart';
import '../domain/generic_abstract_repository.dart';
import 'generic_abstract_of_data_source.dart';

class GenericImplementationOfRepository<T>
    implements GenericAbstractOfRepository<T> {
  final GenericAbstractOfDataSource<T> _dataSource;

  GenericImplementationOfRepository({
    required GenericAbstractOfDataSource<T> dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<Either<Failure, T?>?> create(T item) async {
    try {
      return right(await _dataSource.create(item));
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>?> delete(String id) async {
    try {
      return right(await _dataSource.delete(id));
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<T>?>> getAll(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  ) async {
    try {
      return right(
        await _dataSource.getAll(filter1, filter2, filter3, filter4),
      );
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }

  @override
  Future<Either<Failure, T?>> getById(String id) async {
    try {
      return right(await _dataSource.getById(id));
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>?> update(T item) async {
    try {
      return right(await _dataSource.update(item));
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }
}

import 'package:dartz/dartz.dart';
import '../../../core/error/failure.dart';
import 'generic_abstract_repository.dart';

class GenericService<T> {
  GenericService({required GenericAbstractOfRepository<T> repoAbstract})
    : _repoAbstract = repoAbstract;

  final GenericAbstractOfRepository<T> _repoAbstract;

  Future<Either<Failure, T?>?> createItem({required T item}) {
    return _repoAbstract.create(item);
  }

  Future<Either<Failure, void>?> deleteItem({required String id}) {
    return _repoAbstract.delete(id);
  }

  Future<Either<Failure, void>?> updateItem({required T item}) {
    return _repoAbstract.update(item);
  }

  Future<Either<Failure, T?>> getItem({required String itemId}) {
    return _repoAbstract.getById(itemId);
  }

  Future<Either<Failure, List<T>?>> getItems(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  ) {
    return _repoAbstract.getAll(filter1, filter2, filter3, filter4);
  }

  // Add any other generic methods as needed
}

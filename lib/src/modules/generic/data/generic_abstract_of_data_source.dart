abstract class GenericAbstractOfDataSource<T> {
  Future<T?> create(T item);
  Future<T?> getById(String id);
  Future<List<T>?> getAll(
    String? filter1,
    String? filter2,
    String? filter3,
    String? filter4,
  );
  Future<void> update(T item);
  Future<void> delete(String id);
}

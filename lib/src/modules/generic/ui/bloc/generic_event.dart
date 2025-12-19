part of 'generic_bloc.dart';

sealed class GenericEvent<T> extends Equatable {
  const GenericEvent();

  @override
  List<Object?> get props => [];
}

// Evento de carregamento genérico
final class GenericGetItemEvent<T> extends GenericEvent<T> {
  final String id; // ID do item a ser carregado
  const GenericGetItemEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

final class GenericGetItemListEvent<T> extends GenericEvent<T> {
  final String? filter1;
  final String? filter2;
  final String? filter3;
  final String? filter4;
  // ID do item a ser carregado
  const GenericGetItemListEvent(
    this.filter1,
    this.filter2,
    this.filter3,
    this.filter4,
  );

  @override
  List<Object?> get props => [filter1, filter2, filter3, filter4];
}

final class GenericGetItemListExtraParamsEvent<T> extends GenericEvent<T> {
  final String? filter; // ID do item a ser carregado
  const GenericGetItemListExtraParamsEvent(this.filter);

  @override
  List<Object?> get props => [filter];
}

// Evento de criação genérica
final class GenericCreateItemEvent<T> extends GenericEvent<T> {
  final T item;
  const GenericCreateItemEvent({required this.item});

  @override
  List<Object?> get props => [item];
}

// Evento de atualização genérica
final class GenericUpdateItemEvent<T> extends GenericEvent<T> {
  final String id;
  final T updatedItem;
  const GenericUpdateItemEvent({required this.id, required this.updatedItem});

  @override
  List<Object?> get props => [id, updatedItem];
}

// Evento de exclusão genérica
final class GenericDeleteItemEvent<T> extends GenericEvent<T> {
  final String id; // ID do item a ser deletado
  const GenericDeleteItemEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

// Evento de erro genérico (pode ser usado se for necessário disparar um erro manualmente)
final class GenericErrorEvent<T> extends GenericEvent<T> {
  final Failure failure;
  const GenericErrorEvent({required this.failure});

  @override
  List<Object?> get props => [failure];
}

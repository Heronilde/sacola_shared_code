import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/service.dart';

part 'generic_event.dart';
part 'generic_state.dart';

class GenericBloc<T> extends Bloc<GenericEvent, GenericState<T>> {
  final GenericService<T> service;
  GenericBloc({required this.service}) : super(GenericInitial<T>()) {
    on<GenericCreateItemEvent<T>>((event, emit) async {
      emit(GenericCreatingState<T>());
      final result = await service.createItem(item: event.item);
      result?.fold(
        (failure) {
          emit(GenericErrorState<T>(failure: failure));
        },
        (response) {
          emit(GenericCreateSuccess<T>(item: response));
        },
      );
    });

    on<GenericGetItemEvent<T>>((event, emit) async {
      emit(GenericLoading());
      final result = await service.getItem(itemId: event.id);
      result.fold(
        (failure) {
          emit(GenericErrorState<T>(failure: failure));
        },
        (r) {
          emit(GenericLoadByIdSuccess<T>(item: r));
        },
      );
    });

    on<GenericGetItemListEvent<T>>((event, emit) async {
      emit(GenericLoading());
      final result = await service.getItems(
        event.filter1!,
        event.filter2!,
        event.filter3!,
        event.filter4!,
      );
      result.fold(
        (failure) {
          emit(GenericErrorState<T>(failure: failure));
        },
        (r) {
          // print(r);
          emit(GenericLoadSuccess<T>(item: r));
        },
      );
    });

    on<GenericDeleteItemEvent<T>>((event, emit) async {
      emit(GenericDeleteInProgress());
      final result = await service.deleteItem(id: event.id);
      result!.fold(
        (failure) {
          emit(GenericErrorState<T>(failure: failure));
        },
        (r) {
          emit(GenericDeleteSuccess<T>());
        },
      );
    });

    on<GenericUpdateItemEvent<T>>((event, emit) async {
      emit(GenericUpdatingState<T>());
      final result = await service.updateItem(item: event.updatedItem);
      result?.fold(
        (failure) {
          emit(GenericErrorState<T>(failure: failure));
        },
        (response) {
          emit(GenericUpdateSuccess<T>());
        },
      );
    });
  }
}

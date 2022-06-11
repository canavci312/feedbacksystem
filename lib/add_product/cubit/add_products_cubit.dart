import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lookup_repository/lookup_repository.dart';

part 'add_products_state.dart';
part 'add_products_cubit.freezed.dart';

class AddProductsCubit extends Cubit<AddProductsState> {
  LookUpRepository _lookUpRepository;
  AddProductsCubit(this._lookUpRepository) : super(AddProductsState.initial());

  void addProduct(String text) {
    emit(AddProductsState.loading());
    _lookUpRepository.upsertProduct(text);
    emit(AddProductsState.success());
  }
}

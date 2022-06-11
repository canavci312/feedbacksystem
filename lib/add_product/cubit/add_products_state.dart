part of 'add_products_cubit.dart';

@freezed
class AddProductsState with _$AddProductsState {
  const factory AddProductsState.initial() = _Initial;
    const factory AddProductsState.loading() = _Loading;

  const factory AddProductsState.success() = _Success;

}

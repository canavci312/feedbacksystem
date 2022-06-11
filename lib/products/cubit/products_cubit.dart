import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lookup_repository/lookup_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  LookUpRepository _lookUpRepository;
  AuthRepository _authRepository;
  ProductsCubit(
    this._lookUpRepository,
    this._authRepository,
  ) : super(ProductsState.initial());
  fetchProducts() async {
    emit(ProductsState.loading());
    var user = await _authRepository.currentUser();
    print(user?.companyId);
    var products =
        await _lookUpRepository.getProducts(companyId: user?.companyId);
    if (products != null) emit(ProductsState.success(products));
  }

  deleteProduct(int id) async {
    emit(ProductsState.loading());
    await _lookUpRepository.deleteProduct(id);
    Future.delayed(Duration(milliseconds: 300));
    fetchProducts();
  }
}

import 'package:feedbacksystem/add_product/view/add_product_page.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:feedbacksystem/products/cubit/products_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt(), getIt())..fetchProducts(),
      child: const ProductsView(),
    );
  }
}

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Ürünler'),
        trailing: GestureDetector(
            onTap: (() => showCupertinoDialog<void>(
                barrierDismissible: true,
                context: context,
                builder: (BuildContext context) => const AddProductPage())),
            child: const Icon(CupertinoIcons.add)),
      ),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (products) => ListView.builder(
                    itemCount: products.list?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        key: UniqueKey(),
                        background: Container(
                          color: Colors.red,
                          child: const Center(
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onDismissed: (direction) {
                          context.read<ProductsCubit>().deleteProduct(1);
                        },
                        child: Material(
                          child: ListTile(
                            title: Text(products.list?[index].name ?? ''),
                          ),
                        ),
                      );
                    },
                  ));
        },
      ),
    );
  }
}

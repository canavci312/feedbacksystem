import 'package:feedbacksystem/add_product/cubit/add_products_cubit.dart';
import 'package:feedbacksystem/company_representetive_home/company_representetive_home.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddProductsCubit(getIt()),
      child: const AddProductView(),
    );
  }
}

class AddProductView extends StatefulWidget {
  const AddProductView({Key? key}) : super(key: key);

  @override
  State<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends State<AddProductView> {
  TextEditingController _productName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductsCubit, AddProductsState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            Navigator.of(context)
                .push(CupertinoPageRoute(
                    builder: (context) => CompanyRepresentetiveHome(
                          currentIndex: 2,
                        )))
                .then((value) => showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                          title: const Text('Başarılı!'),
                          content: const Text('Yeni ürün eklendi'),
                          actions: [
                            CupertinoDialogAction(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Tamam'),
                            )
                          ],
                        )));
          },
        );
      },
      builder: (context, state) {
        return state.when(
            initial: () => CupertinoAlertDialog(
                  title: Text('Ürün Ekle'),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoTextField(
                      controller: _productName,
                      placeholder: 'Ürün adı',
                    ),
                  ),
                  actions: [
                    CupertinoDialogAction(
                      child: Text('İptal'),
                      isDestructiveAction: true,
                      onPressed: () => Navigator.pop(context),
                    ),
                    CupertinoDialogAction(
                      child: const Text('Ekle'),
                      isDefaultAction: true,
                      onPressed: () {
                        if (_productName.text.trim().isNotEmpty) {
                          context
                              .read<AddProductsCubit>()
                              .addProduct(_productName.text);
                        } else {
                          null;
                        }
                      },
                    ),
                  ],
                ),
            loading: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            success: () => const SizedBox());
      },
    );
  }
}

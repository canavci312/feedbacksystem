import 'package:feedback_repository/feedback_repository.dart';
import 'package:feedbacksystem/customer_add_feedback/cubit/customer_add_feedback_cubit.dart';
import 'package:feedbacksystem/customer_home/view/customer_home.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lookup_repository/lookup_repository.dart';

class CustomerAddFeedbackPage extends StatelessWidget {
  const CustomerAddFeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => CustomerAddFeedbackCubit(
          getIt<LookUpRepository>(), getIt<FeedbackRepository>())
        ..getCompanyList(),
      child: const CustomerAddFeedbackView(),
    );
  }
}

class CustomerAddFeedbackView extends StatefulWidget {
  const CustomerAddFeedbackView({Key? key}) : super(key: key);

  @override
  State<CustomerAddFeedbackView> createState() =>
      _CustomerAddFeedbackViewState();
}

class _CustomerAddFeedbackViewState extends State<CustomerAddFeedbackView> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _textController.dispose();
    super.dispose();
  }

  int? scrolledCompanyId;
  String? selectedCompanyName;
  int? selectedCompanyId;
  int? scrolledProductId;
  String? selectedProductName;
  int? selectedProductId;
  bool isAnonym = false;
  @override
  Widget build(BuildContext context) {
    void showProductPicker() {
      scrolledProductId =
          context.read<CustomerAddFeedbackCubit>().products!.first.id;
      showCupertinoModalPopup(
          useRootNavigator: false,
          context: context,
          builder: (BuildContext builder) {
            return Container(
                height: MediaQuery.of(context).copyWith().size.height * 0.35,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: const Text('İptal')),
                          GestureDetector(
                              onTap: (() {
                                selectedProductId = context
                                    .read<CustomerAddFeedbackCubit>()
                                    .products!
                                    .firstWhere((element) =>
                                        element.id == scrolledProductId)
                                    .id;
                                selectedProductName = context
                                    .read<CustomerAddFeedbackCubit>()
                                    .products!
                                    .firstWhere((element) =>
                                        element.id == scrolledProductId)
                                    .name;
                                Navigator.of(context).pop();
                                setState(() {});
                              }),
                              child: const Text('Seç'))
                        ],
                      ),
                    ),
                    Expanded(
                      child: CupertinoPicker(
                        children: context
                            .read<CustomerAddFeedbackCubit>()
                            .products!
                            .map((e) => Text(e.name))
                            .toList(),
                        onSelectedItemChanged: (value) {
                          var id = context
                              .read<CustomerAddFeedbackCubit>()
                              .products![value]
                              .id;
                          scrolledProductId = id;
                        },
                        itemExtent: 25,
                        diameterRatio: 1,
                        useMagnifier: true,
                        magnification: 1.3,
                        looping: false,
                      ),
                    ),
                  ],
                ));
          });
    }

    void showPicker() {
      scrolledCompanyId = context
          .read<CustomerAddFeedbackCubit>()
          .companies!
          .firstWhere((element) => element.id == 1)
          .id;
      showCupertinoModalPopup(
          useRootNavigator: false,
          context: context,
          builder: (BuildContext builder) {
            return Container(
                height: MediaQuery.of(context).copyWith().size.height * 0.35,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: const Text('İptal')),
                          GestureDetector(
                              onTap: (() {
                                selectedCompanyId = context
                                    .read<CustomerAddFeedbackCubit>()
                                    .companies!
                                    .firstWhere((element) =>
                                        element.id == scrolledCompanyId)
                                    .id;
                                selectedCompanyName = context
                                    .read<CustomerAddFeedbackCubit>()
                                    .companies!
                                    .firstWhere((element) =>
                                        element.id == scrolledCompanyId)
                                    .name;
                                context
                                    .read<CustomerAddFeedbackCubit>()
                                    .getProductList(selectedCompanyId!);
                                Navigator.of(context).pop();
                                setState(() {});
                              }),
                              child: const Text('Seç'))
                        ],
                      ),
                    ),
                    Expanded(
                      child: CupertinoPicker(
                        children: context
                            .read<CustomerAddFeedbackCubit>()
                            .companies!
                            .map((e) => Text(e.name))
                            .toList(),
                        onSelectedItemChanged: (value) {
                          var id = context
                              .read<CustomerAddFeedbackCubit>()
                              .companies!
                              .firstWhere((element) => element.id == value + 1)
                              .id;
                          scrolledCompanyId = id;
                        },
                        itemExtent: 25,
                        diameterRatio: 1,
                        useMagnifier: true,
                        magnification: 1.3,
                        looping: true,
                      ),
                    ),
                  ],
                ));
          });
    }

    return BlocListener<CustomerAddFeedbackCubit, CustomerAddFeedbackState>(
      listener: (context, state) {
        state.when(initial: ((isLoading, showErrorDialog, isSuccessful) {
          if (showErrorDialog!) {
            showCupertinoDialog<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Hata'),
                content: const Text('Tüm alanları doldurduğunuza emin olun'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: const Text('Ok'),
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
          }
          if (isSuccessful!) {
            showCupertinoDialog<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Başarılı!'),
                content: const Text('Geribildiriminiz için teşekkür ederiz!'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: const Text('Ok'),
                    isDestructiveAction: false,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const CustomerHome(),
                          ));
                    },
                  )
                ],
              ),
            );
          }
        }));
      },
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Geribildirim oluştur'),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Başlık'),
                    const SizedBox(
                      height: 5,
                    ),
                    CupertinoTextField(
                      controller: _titleController,
                      padding: const EdgeInsets.all(10),
                      placeholder: "Geribildiriminizin konusu nedir?",
                      maxLines: null,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                25.0) //                 <--- border radius here
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Geribildirim Detayı'),
                    const SizedBox(
                      height: 5,
                    ),
                    CupertinoTextField(
                      controller: _textController,
                      keyboardType: TextInputType.multiline,
                      padding: const EdgeInsets.all(10),
                      placeholder:
                          "Ürün veya hizmetle ilgili nasıl bir sorun yaşadınız?",
                      expands: true,
                      maxLines: null,
                      minLines: null,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                25.0) //                 <--- border radius here
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Şirket'),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        showPicker();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          selectedCompanyName == null
                              ? 'Şirket seçiniz'
                              : selectedCompanyName!,
                          style: selectedCompanyName == null
                              ? const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: CupertinoColors.placeholderText,
                                )
                              : const TextStyle(),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.grey),
                          borderRadius: const BorderRadius.all(Radius.circular(
                                  25.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Visibility(
                        visible: selectedCompanyName != null,
                        child: const Text('Ürün')),
                    const SizedBox(
                      height: 5,
                    ),
                    Visibility(
                      visible: selectedCompanyName != null,
                      child: GestureDetector(
                        onTap: () {
                          showProductPicker();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            selectedProductName == null
                                ? 'Ürün seçiniz'
                                : selectedProductName!,
                            style: selectedProductName == null
                                ? const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: CupertinoColors.placeholderText,
                                  )
                                : const TextStyle(),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.grey),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    25.0) //                 <--- border radius here
                                ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text('Anonim olarak yolla:'),
                        const SizedBox(
                          width: 5,
                        ),
                        CupertinoSwitch(
                          activeColor: Theme.of(context).primaryColor,
                          value: isAnonym,
                          onChanged: (bool value) {
                            setState(() {
                              isAnonym = value;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BlocBuilder<CustomerAddFeedbackCubit,
                        CustomerAddFeedbackState>(
                      builder: (context, state) {
                        return Center(
                          child: CupertinoButton.filled(
                            child: state.when(
                              initial: (isLoading, showErrorDialog,
                                      isSuccessful) =>
                                  isLoading!
                                      ? const CircularProgressIndicator()
                                      : const Text('Gönder'),
                            ),
                            onPressed: () {
                              context
                                  .read<CustomerAddFeedbackCubit>()
                                  .postFeedback(
                                      _titleController.text,
                                      _textController.text,
                                      selectedProductId ?? -1,
                                      true);
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

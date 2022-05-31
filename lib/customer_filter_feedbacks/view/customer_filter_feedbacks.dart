import 'package:feedbacksystem/customer_filter_feedbacks/cubit/customer_filter_feedbacks_cubit.dart';
import 'package:feedbacksystem/customer_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';

class CustomerFilterFeedbacksDialog extends StatelessWidget {
  const CustomerFilterFeedbacksDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CustomerFilterFeedbacksCubit(getIt())..fetchSectors(),
      child: CustomerFilterFeedbacksView(),
    );
  }
}

class CustomerFilterFeedbacksView extends StatelessWidget {
  const CustomerFilterFeedbacksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CustomerFilterFeedbacksCubit>();
    return AlertDialog(
      title: const Text('Filtrele'),
      content: BlocConsumer<CustomerFilterFeedbacksCubit,
          CustomerFilterFeedbacksState>(
        listener: (context, state) {
          state.whenOrNull(initial: (isLoading,
              sectors,
              seletecSector,
              companies,
              selectedCompany,
              selectedFeedbackType,
              selectedFeedbackSituation,
              product,
              selectedProduct) {
            if (isLoading == true) {
              const Center(
                child: CircularProgressIndicator(),
              );
            }
          });
        },
        builder: (context, state) {
          return state.when(
            initial: (isLoading,
                sectors,
                selectedSector,
                companies,
                selectedCompany,
                selectedFeedbackType,
                selectedFeedbackSituation,
                product,
                selectedProduct) {
              print(sectors);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: DropdownButton<int>(
                      hint: Text('Sektör Seçiniz'),
                      value: selectedSector,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      underline: Container(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      onChanged: (int? newValue) {
                        cubit.selectSector(newValue);
                      },
                      items: sectors?.list
                          ?.map<DropdownMenuItem<int>>((MyList value) {
                        return DropdownMenuItem<int>(
                          value: value.id,
                          child: Text(value.name ?? ''),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<int>(
                      hint: Text('Firma Seçiniz'),
                      value: selectedCompany,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      underline: Container(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      onChanged: (int? newValue) {
                        cubit.selectCompany(newValue);
                      },
                      items: companies?.list
                          ?.map<DropdownMenuItem<int>>((Company value) {
                        return DropdownMenuItem<int>(
                          value: value.id,
                          child: Text(value.name ?? ''),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<int>(
                      hint: Text('Ürün seçiniz'),
                      value: selectedProduct,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      underline: Container(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      onChanged: (int? newValue) {
                        cubit.selectProduct(newValue);
                      },
                      items: product?.list
                          ?.map<DropdownMenuItem<int>>((Company value) {
                        return DropdownMenuItem<int>(
                          value: value.id,
                          child: Text(
                            value.name ?? '',
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<int>(
                      hint: Text('Geribildirim Türü'),
                      value: selectedFeedbackType,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      underline: Container(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      onChanged: (int? newValue) {
                        cubit.selectFeedbackType(newValue);
                      },
                      items: [
                        {"id": 1, "name": "Şikayet"},
                        {"id": 2, "name": "Memnuniyet"},
                        {"id": 3, "name": "Öneri"}
                      ].map<DropdownMenuItem<int>>(
                          (Map<String, dynamic> value) {
                        return DropdownMenuItem<int>(
                          value: value["id"],
                          child: Text(value["name"]),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<int>(
                      hint: Text('Geribildirim Durumu'),
                      value: selectedFeedbackSituation,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      underline: Container(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      onChanged: (int? newValue) {
                        cubit.selectFeedbackSituation(newValue);
                      },
                      items: [
                        {"id": 1, "name": "Çözülmüş"},
                        {"id": 2, "name": "Açık"},
                        {"id": 3, "name": "Cevaplanmış"}
                      ].map<DropdownMenuItem<int>>(
                          (Map<String, dynamic> value) {
                        return DropdownMenuItem<int>(
                          value: value["id"],
                          child: Text(value["name"]),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          child: const Text('Filtrele'),
          isDestructiveAction: false,
          onPressed: () {
            var filterModel = FeedbackFilterModel();
            context.read<CustomerFilterFeedbacksCubit>().state.when(initial:
                ((isLoading,
                    sectors,
                    selectedSector,
                    companies,
                    selectedCompany,
                    selectedFeedbackType,
                    selectedFeedbackSituation,
                    product,
                    selectedProduct) {
              filterModel.companyId = selectedCompany;
              filterModel.feedbackStatus = selectedFeedbackSituation;
              filterModel.feedbackType = selectedFeedbackType;
              filterModel.sectorId = selectedSector;
              filterModel.productId = selectedProduct;
            }));
            Navigator.pop(context, filterModel);
          },
        )
      ],
    );
  }
}

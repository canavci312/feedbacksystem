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
          if (state.isLoading == true) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: DropdownButton<int>(
                  hint: Text('Sektör Seçiniz'),
                  value: state.selectedSector,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  onChanged: (int? newValue) {
                    cubit.selectSector(newValue);
                  },
                  items: state.sectors?.list
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
                  value: state.selectedCompany,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  onChanged: (int? newValue) {
                    cubit.selectCompany(newValue);
                  },
                  items: state.companies?.list
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
                  value: state.selectedProduct,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  onChanged: (int? newValue) {
                    cubit.selectProduct(newValue);
                  },
                  items: state.products?.list
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
                  value: state.selectedFeedbackType,
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
                  ].map<DropdownMenuItem<int>>((Map<String, dynamic> value) {
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
                  value: state.selectedFeedbackSituation,
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
                  ].map<DropdownMenuItem<int>>((Map<String, dynamic> value) {
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
      ),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          child: const Text('Filtrele'),
          isDestructiveAction: false,
          onPressed: () {
            var filterModel = FeedbackFilterModel();
            CustomerFilterFeedbacksState curState =
                context.read<CustomerFilterFeedbacksCubit>().state;
            filterModel.companyId = curState.selectedCompany;
            filterModel.feedbackStatus = curState.selectedFeedbackSituation;
            filterModel.feedbackType = curState.selectedFeedbackType;
            filterModel.sectorId = curState.selectedSector;
            filterModel.productId = curState.selectedProduct;

            Navigator.pop(context, filterModel);
          },
        )
      ],
    );
  }
}

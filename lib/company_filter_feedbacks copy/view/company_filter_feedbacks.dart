import 'package:feedbacksystem/company_filter_feedbacks/cubit/company_filter_feedbacks_cubit.dart';
import 'package:feedbacksystem/company_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';

class CompanyFilterFeedbacksDialog extends StatelessWidget {
  const CompanyFilterFeedbacksDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CompanyFilterFeedbacksCubit(getIt(),getIt())..fetchProducts(),
      child: CompanyFilterFeedbacksView(),
    );
  }
}

class CompanyFilterFeedbacksView extends StatelessWidget {
  const CompanyFilterFeedbacksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CompanyFilterFeedbacksCubit>();
    return AlertDialog(
      title: const Text('Filtrele'),
      content: BlocConsumer<CompanyFilterFeedbacksCubit,
          CompanyFilterFeedbacksState>(
        listener: (context, state) {
          state.whenOrNull(initial: (isLoading,
              isArchieved,
              isDirected,
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
            initial: (isLoading, isArchieved, isDirected, selectedFeedbackType,
                selectedFeedbackSituation, product, selectedProduct) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<int>(
                      hint: Text('??r??n se??iniz'),
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
                  Row(
                    children: [
                      Icon(CupertinoIcons.archivebox),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: DropdownButton<bool?>(
                            hint: Text('Ar??ivlenme'),
                            value: isArchieved,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            underline: Container(
                              height: 2,
                              color: Theme.of(context).primaryColor,
                            ),
                            onChanged: (bool? newValue) {
                              cubit.selectisArchieved(newValue);
                            },
                            items: [
                              {"id": null, "name": "??kiside"},
                              {"id": true, "name": "Ar??ivlenmi??"},
                              {"id": false, "name": "Ar??ivlenmemi??"}
                            ].map<DropdownMenuItem<bool?>>(
                                (Map<String, dynamic> value) {
                              return DropdownMenuItem<bool?>(
                                value: value["id"],
                                child: Text(value["name"]),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.arrow_turn_down_right),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: DropdownButton<bool?>(
                            hint: Text('Y??nlendirilme'),
                            value: isDirected,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            underline: Container(
                              height: 2,
                              color: Theme.of(context).primaryColor,
                            ),
                            onChanged: (bool? newValue) {
                              cubit.selectisDirected(newValue);
                            },
                            items: [
                              {"id": null, "name": "??kiside"},
                              {"id": true, "name": "Y??nlendirilmi??"},
                              {"id": false, "name": "Y??nlendirilmemi??"}
                            ].map<DropdownMenuItem<bool?>>(
                                (Map<String, dynamic> value) {
                              return DropdownMenuItem<bool?>(
                                value: value["id"],
                                child: Text(value["name"]),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<int>(
                      hint: Text('Geribildirim T??r??'),
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
                        {"id": 1, "name": "??ikayet"},
                        {"id": 2, "name": "Memnuniyet"},
                        {"id": 3, "name": "??neri"}
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
                        {"id": 1, "name": "????z??lm????"},
                        {"id": 2, "name": "A????k"},
                        {"id": 3, "name": "Cevaplanm????"}
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
            var filterModel = CompanyFeedbackFilterModel();
            context.read<CompanyFilterFeedbacksCubit>().state.when(initial:
                ((isLoading, isArchieved, isDirected, selectedFeedbackType,
                    selectedFeedbackSituation, product, selectedProduct) {
              filterModel.isArchieved = isArchieved;
              filterModel.isDirected = isDirected;
              filterModel.feedbackStatus = selectedFeedbackSituation;
              filterModel.feedbackType = selectedFeedbackType;
              filterModel.productId = selectedProduct;
            }));
            Navigator.pop(context, filterModel);
          },
        )
      ],
    );
  }
}

import 'package:feedbacksystem/admin_filter_feedbacks/cubit/admin_filter_feedbacks_cubit.dart';
import 'package:feedbacksystem/admin_filter_feedbacks/model/feedback_filter_model.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';

class AdminFilterFeedbacksDialog extends StatelessWidget {
  const AdminFilterFeedbacksDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdminFilterFeedbacksCubit(getIt())..fetchSectors(),
      child: AdminFilterFeedbacksView(),
    );
  }
}

class AdminFilterFeedbacksView extends StatelessWidget {
  const AdminFilterFeedbacksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AdminFilterFeedbacksCubit>();
    return AlertDialog(
      title: const Text('Filtrele'),
      content:
          BlocConsumer<AdminFilterFeedbacksCubit, AdminFilterFeedbacksState>(
        listener: (context, state) {
          state.whenOrNull(initial: (isLoading,
              sectors,
              selectedSector,
              companies,
              selectedCompany,
              isChecked,
              isArchieved,
              isDirected,
              selectedFeedbackType,
              selectedFeedbackSituation,
              products,
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
                isChecked,
                isArchieved,
                isDirected,
                selectedFeedbackType,
                selectedFeedbackSituation,
                products,
                selectedProduct) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: DropdownButton<int>(
                      hint: Text('Sekt??r Se??iniz'),
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
                      hint: Text('Firma Se??iniz'),
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
                      items: products?.list
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
                      Icon(CupertinoIcons.eye),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: DropdownButton<bool?>(
                            hint: Text('Kontol Edilme'),
                            value: isChecked,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            underline: Container(
                              height: 2,
                              color: Theme.of(context).primaryColor,
                            ),
                            onChanged: (bool? newValue) {
                              cubit.selectIsChecked(newValue);
                            },
                            items: [
                              {"id": null, "name": "??kiside"},
                              {"id": true, "name": "Kontrol Edilmi??"},
                              {"id": false, "name": "Kontrol Edilmemi??"}
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
            var filterModel = AdminFeedbackFilterModel();
            context.read<AdminFilterFeedbacksCubit>().state.when(initial:
                ((isLoading,
                    sectors,
                    selectedSector,
                    companies,
                    selectedCompany,
                    isChecked,
                    isArchieved,
                    isDirected,
                    selectedFeedbackType,
                    selectedFeedbackSituation,
                    products,
                    selectedProduct) {
              filterModel.isChecked = isChecked;
              filterModel.sectorId = selectedSector;
              filterModel.companyId = selectedCompany;
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

import 'package:feedbacksystem/customer_statistics/cubit/customer_statistics_cubit.dart';
import 'package:feedbacksystem/display_reports/cubit/display_reports_cubit.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomerStatisticsPage extends StatelessWidget {
  const CustomerStatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CustomerStatisticsCubit(getIt())..fetchCustomerStatistics(),
      child: CustomerStatisticsView(),
    );
  }
}

class CustomerStatisticsView extends StatelessWidget {
  const CustomerStatisticsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Müşteri İstatistikleri'),
      ),
      child: BlocBuilder<CustomerStatisticsCubit, CustomerStatisticsState>(
        builder: (context, state) {
          return state.when(
              initial: () => SizedBox(),
              loading: () => CircularProgressIndicator(),
              success: (report) => SingleChildScrollView(
                    child: Material(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          ExpansionTile(
                              title: Text('Müşteri Yaş Dağılımı'),
                              children: <Widget>[
                                SfCartesianChart(
                                    primaryXAxis: CategoryAxis(interval: 1),
                                    series: <ChartSeries>[
                                      // Renders bar chart
                                      BarSeries<UserAgeInterval, String>(
                                          dataSource: report
                                                  .data
                                                  ?.customerStatistics
                                                  ?.userAgeInterval ??
                                              [],
                                          xValueMapper:
                                              (UserAgeInterval data, _) {
                                            return data.name!;
                                          },
                                          yValueMapper:
                                              (UserAgeInterval data, _) =>
                                                  data.count)
                                    ]),
                              ]),
                          ExpansionTile(
                              title: Text('Müşteri Eğitim Seviyesi Dağılımı'),
                              children: <Widget>[
                                SfCartesianChart(
                                    primaryXAxis: CategoryAxis(interval: 1),
                                    series: <ChartSeries>[
                                      // Renders bar chart
                                      BarSeries<EducationDistribution, String>(
                                          dataSource: report
                                                  .data
                                                  ?.customerStatistics
                                                  ?.educationDistribution ??
                                              [],
                                          xValueMapper:
                                              (EducationDistribution data, _) {
                                            return data.name!;
                                          },
                                          yValueMapper:
                                              (EducationDistribution data, _) =>
                                                  data.count)
                                    ]),
                              ]),
                          ExpansionTile(
                              title: Text('Müşteri Şehir Dağılımı'),
                              children: <Widget>[
                                SizedBox(
                                  height: 200,
                                  child: ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: false,
                                    itemCount: report.data?.customerStatistics
                                        ?.cityDistribution?.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Text(
                                          '${report.data?.customerStatistics?.cityDistribution?[index].name}: ${report.data?.customerStatistics?.cityDistribution?[index].count}');
                                    },
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}

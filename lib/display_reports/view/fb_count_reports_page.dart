import 'package:feedbacksystem/display_reports/cubit/display_reports_cubit.dart';
import 'package:feedbacksystem/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fms_api/fms_api.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FeedbackCountReportsPage extends StatelessWidget {
  const FeedbackCountReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DisplayReportsCubit(getIt())..fetchFeedbackCountReports(),
      child: FeedbackCountReportsView(),
    );
  }
}

class FeedbackCountReportsView extends StatelessWidget {
  const FeedbackCountReportsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Geridönüş Sayıları'),
      ),
      child: BlocBuilder<DisplayReportsCubit, DisplayReportsState>(
        builder: (context, state) {
          return state.when(
              initial: () => SizedBox(),
              loading: () => CircularProgressIndicator(),
              success: (report) => Material(
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 70,
                            ),
                            ExpansionTile(
                              title: Text('Geridönüş Dağılımı'),
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          height: 10,
                                          width: 10,
                                          color: Colors.green),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Memnuniyet')
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          height: 10,
                                          width: 10,
                                          color: Colors.red),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Şikayet')
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          height: 10,
                                          width: 10,
                                          color: Colors.yellow),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Öneri')
                                    ],
                                  ),
                                ),
                                SfCircularChart(series: <CircularSeries>[
                                  // Render pie chart
                                  PieSeries<FeedbacksPerType, String>(
                                      dataSource:
                                          report.data?.feedbacksPerType ?? [],
                                      pointColorMapper:
                                          (FeedbacksPerType data, _) =>
                                              intToColor(data.id!),
                                      xValueMapper:
                                          (FeedbacksPerType data, _) =>
                                              data.name,
                                      yValueMapper:
                                          (FeedbacksPerType data, _) =>
                                              data.count)
                                ])
                              ],
                            ),
                            ExpansionTile(
                                title: Text('Ürünlerin Geridönüş Sayısı'),
                                children: <Widget>[
                                  SfCartesianChart(
                                      primaryXAxis: CategoryAxis(interval: 1),
                                      series: <ChartSeries>[
                                        // Renders bar chart
                                        BarSeries<FeedbacksPerProduct, String>(
                                            dataSource: report.data
                                                    ?.feedbacksPerProduct ??
                                                [],
                                            xValueMapper:
                                                (FeedbacksPerProduct data, _) {
                                              return data.name!;
                                            },
                                            yValueMapper:
                                                (FeedbacksPerProduct data, _) =>
                                                    data.count)
                                      ]),
                                ]),
                            SizedBox(
                              height: 50,
                            )
                          ]),
                    ),
                  ));
        },
      ),
    );
  }

  Color intToColor(int i) {
    switch (i) {
      case 1:
        return Colors.red;
      case 2:
        return Colors.green;
      case 3:
        return Colors.yellow;
      default:
        return Colors.green;
    }
  }
}

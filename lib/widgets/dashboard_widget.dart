import 'package:flutter/material.dart';

import '../util/responsive.dart';
import '../widgets/activity_details_card.dart';
import '../widgets/bar_graph_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/line_chart_card.dart';
import '../widgets/summary_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final gap = isDesktop ? 12.0 : 18.0;

    if (isDesktop) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderWidget(),
            SizedBox(height: gap),
            const ActivityDetailsCard(),
            SizedBox(height: gap),
            const Expanded(flex: 3, child: LineChartCard()),
            SizedBox(height: gap),
            const Expanded(flex: 2, child: BarGraphCard()),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: gap),
            const HeaderWidget(),
            SizedBox(height: gap),
            const ActivityDetailsCard(),
            SizedBox(height: gap),
            const LineChartCard(),
            SizedBox(height: gap),
            const BarGraphCard(),
            SizedBox(height: gap),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}

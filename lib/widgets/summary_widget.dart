import 'package:flutter/material.dart';

import '../const/constant.dart';
import '../widgets/pie_chart_widget.dart';
import '../widgets/scheduled_widget.dart';
import '../widgets/summary_details.dart';
import '../widgets/svgdisplay.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Chart(),
              Text(
                'System Efficiency',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 16),
              SummaryDetails(),
              SizedBox(height: 40),
              Scheduled(),
              SizedBox(height: 40),
              SvgDisplay(),
            ],
          ),
        ),
      ),
    );
  }
}

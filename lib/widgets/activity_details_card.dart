import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/metric_details.dart';
import '../model/metric_model.dart';
import '../util/responsive.dart';
import '../widgets/custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  Widget buildIcon(MetricModel model, double size) {
    return model.isSvg
        ? SvgPicture.asset(model.icon, width: size, height: size)
        : Image.asset(model.icon, width: size, height: size);
  }

  @override
  Widget build(BuildContext context) {
    final metricDetails = MetricDetails();
    final isDesktop = Responsive.isDesktop(context);
    final iconSize = isDesktop ? 36.0 : 50.0;

    return GridView.builder(
      itemCount: metricDetails.metrics.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12.0,
        childAspectRatio: isDesktop ? 1.2 : 0.9,
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildIcon(metricDetails.metrics[index], iconSize),
            Padding(
              padding: EdgeInsets.only(
                top: isDesktop ? 8 : 15,
                bottom: isDesktop ? 2 : 4,
              ),
              child: Text(
                metricDetails.metrics[index].value,
                style: TextStyle(
                  fontSize: isDesktop ? 16 : 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              metricDetails.metrics[index].title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: isDesktop ? 11 : 13,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

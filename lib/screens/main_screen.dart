import 'package:flutter/material.dart';

import '../util/responsive.dart';
import '../widgets/dashboard_widget.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(isDesktop ? 12.0 : 0.0),
          child: Row(
            children: [
              if (isDesktop) ...[
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: const SideMenuWidget(),
                  ),
                ),
                const SizedBox(width: 12),
              ],
              const Expanded(flex: 7, child: DashboardWidget()),
              if (isDesktop) ...[
                const SizedBox(width: 12),
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: const SummaryWidget(),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

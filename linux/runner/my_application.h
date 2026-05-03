#ifndef FLUTTER_MY_APPLICATION_H_
#define FLUTTER_MY_APPLICATION_H_

#include <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(HvacDashboardApplication, hvac_dashboard_application,
                     HVAC_DASHBOARD, APPLICATION, GtkApplication)

/**
 * hvac_dashboard_application_new:
 *
 * Creates a new Flutter-based HVAC dashboard application.
 *
 * Returns: a new #HvacDashboardApplication.
 */
HvacDashboardApplication* hvac_dashboard_application_new();

#endif  // FLUTTER_MY_APPLICATION_H_

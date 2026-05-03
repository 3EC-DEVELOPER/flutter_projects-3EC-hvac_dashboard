# 3EC HVAC Dashboard

<p align="center">
  <img src="assets/icons/3ec.svg" alt="3EC Logo" width="80"/>
</p>

<p align="center">
  <strong>A responsive Building Management System (BMS) dashboard built with Flutter</strong><br/>
  <em>Designed and developed by <a href="https://github.com/3EC-DEVELOPER">Three Energy Control (3EC)</a></em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white" alt="Dart"/>
  <img src="https://img.shields.io/badge/macOS-000000?logo=apple&logoColor=white" alt="macOS"/>
  <img src="https://img.shields.io/badge/Windows-0078D4?logo=windows&logoColor=white" alt="Windows"/>
  <img src="https://img.shields.io/badge/Linux-FCC624?logo=linux&logoColor=black" alt="Linux"/>
  <img src="https://img.shields.io/badge/Android-3DDC84?logo=android&logoColor=white" alt="Android"/>
  <img src="https://img.shields.io/badge/iOS-000000?logo=apple&logoColor=white" alt="iOS"/>
  <img src="https://img.shields.io/badge/Web-4285F4?logo=googlechrome&logoColor=white" alt="Web"/>
  <img src="https://img.shields.io/badge/Theme-Dark-1a1a2e" alt="Dark Theme"/>
</p>

---

## Overview

This repository showcases a **responsive HVAC/BMS dashboard UI** built entirely in Flutter. It demonstrates how a modern Building Management System interface can deliver a rich, data-driven experience across desktop, tablet, and mobile form factors — all from a single codebase.

> **Note:** This is a front-end UI demonstration. Data shown is representative/static. It is intended to illustrate design capability and responsive layout architecture, not to represent a production-ready BMS integration.

---

## Screenshots

### Desktop
> Three-column layout — navigation sidebar, main dashboard, system summary panel

![Desktop View](screenshots/desktop.png)

### Tablet
> Two-column layout — dashboard with inline summary below

![Tablet View](screenshots/tablet.png)

### Mobile
> Single-column layout — drawer navigation, scrollable dashboard, end-drawer summary

![Mobile View](screenshots/mobile.png)

---

## Features

- **Fully Responsive** — adapts layout across desktop, tablet, and mobile breakpoints
- **HVAC Metrics Cards** — live-style display of Dry Bulb Temp, Wet Bulb Temp, Relative Humidity, CO₂, Static Pressure, Dynamic Pressure
- **Outside Air Temperature Chart** — 24-hour trend line with °C scale
- **Weekly Bar Charts** — Energy Consumption (kWh), Zone Temperature (°C), Airflow Rate (m³/h)
- **System Efficiency Panel** — donut chart with overall system load percentage
- **Summary Stats** — Zone Temp, Energy, Airflow, and System Load at a glance
- **Scheduled Maintenance** — upcoming BMS service and maintenance task list
- **System Status Grid** — quick-access icons for A/C, Ventilation, Heating, Cooling, Energy, and Network
- **Dark Theme** — purpose-built dark UI with a professional engineering aesthetic
- **BMS Icon Library** — custom SVG icon set covering the full range of building systems

---

## Responsive Breakpoints

| Breakpoint | Layout |
|---|---|
| **Desktop** (≥ 1100px) | Sidebar + Dashboard + Summary panel (3-column) |
| **Tablet** (≥ 850px) | Dashboard + Summary stacked (2-column header, inline summary) |
| **Mobile** (< 850px) | Full-width dashboard, navigation via hamburger drawer |

---

## Platform Support

| Platform | Status |
|---|---|
| macOS | ✅ Verified |
| Windows | ✅ Supported |
| Linux | ✅ Supported |
| Android | ✅ Verified |
| iOS | ✅ Supported |
| Web | ✅ Supported |

> Built on Flutter's single-codebase model — one project, six platforms.

---

## Tech Stack

| Package | Purpose |
|---|---|
| [Flutter](https://flutter.dev) | Cross-platform UI framework |
| [fl_chart](https://pub.dev/packages/fl_chart) | Line charts, bar charts, and pie/donut charts |
| [flutter_svg](https://pub.dev/packages/flutter_svg) | SVG icon rendering |

---

## Getting Started

### Prerequisites

- Flutter SDK `^3.6.2`
- Dart SDK `^3.6.2`

### Run

```bash
# Clone the repository
git clone https://github.com/3EC-DEVELOPER/hvac_dashboard.git
cd hvac_dashboard

# Install dependencies
flutter pub get

# Run on your platform of choice
flutter run -d macos       # macOS desktop
flutter run -d windows     # Windows desktop
flutter run -d linux       # Linux desktop
flutter run -d chrome      # Web (Chrome)
flutter run -d ios         # iOS simulator / device
flutter run -d android     # Android emulator / device
```

---

## Project Structure

```
lib/
├── const/          # Theme colours and shared constants
├── data/           # Static data sources (metrics, chart data, menu items)
├── model/          # Data models
├── screens/        # Top-level screen layout (responsive scaffold)
├── util/           # Responsive breakpoint helpers
└── widgets/        # All UI components
    ├── dashboard_widget.dart       # Main content area
    ├── side_menu_widget.dart       # Navigation sidebar
    ├── summary_widget.dart         # Right-hand summary panel
    ├── header_widget.dart          # Top bar with search
    ├── activity_details_card.dart  # HVAC metric cards grid
    ├── line_chart_card.dart        # Outside air temperature trend
    ├── bar_graph_widget.dart       # Weekly metric bar charts
    ├── pie_chart_widget.dart       # System efficiency donut chart
    ├── summary_details.dart        # Key stats row
    ├── scheduled_widget.dart       # Maintenance schedule list
    └── svgdisplay.dart             # System status icon grid
```

---

## About Three Energy Control (3EC)

**Three Energy Control** is a Building Management Systems specialist, delivering intelligent building automation, energy monitoring, and HVAC control solutions.

This dashboard project is part of our ongoing work to bring modern, user-focused interfaces to the BMS industry — an industry traditionally underserved by intuitive UI/UX.

---

## Licence & Usage

© 2026 Three Energy Control Ltd. All rights reserved.

This repository is published for **demonstration and portfolio purposes only**. The design, icons, layout, and code structure represent proprietary work by Three Energy Control. You are welcome to explore and learn from the code, but you may not reproduce, redistribute, or use this work — in whole or in part — for commercial purposes without prior written consent from Three Energy Control.

import '../model/metric_model.dart';

class MetricDetails {
  final metrics = const [
    MetricModel(
      icon: 'assets/icons/Thermometer.svg',
      value: "23 °C",
      title: "Dry Bulb Temp",
      isSvg: true,
    ),
    MetricModel(
      icon: 'assets/icons/Droplet.svg',
      value: "17 °C",
      title: "Wet Bulb Temp",
      isSvg: true,
    ),
    MetricModel(
      icon: 'assets/icons/Humidity.svg',
      value: "65 %RH",
      title: "Relative Humidity",
      isSvg: true,
    ),
    MetricModel(
      icon: 'assets/icons/CO2.svg',
      value: "760 ppm",
      title: "Carbon Dioxide",
      isSvg: true,
    ),
    MetricModel(
      icon: 'assets/icons/Gauge.svg',
      value: "3 bar",
      title: "Static Pressure",
      isSvg: true,
    ),
    MetricModel(
      icon: 'assets/icons/Gauge.svg',
      value: "7 bar",
      title: "Dynamic Pressure",
      isSvg: true,
    ),
    MetricModel(
      icon: 'assets/icons/Chart.svg',
      value: "",
      title: "Trends",
      isSvg: true,
    ),
    MetricModel(
      icon: 'assets/icons/Sun.svg',
      value: "320 W/m²",
      title: "Solar Irradiance",
      isSvg: true,
    ),
  ];
}

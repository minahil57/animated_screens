class ScreenDemoModel {
  const ScreenDemoModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.route,
    this.tags = const [],
  });

  final String id;
  final String title;
  final String subtitle;
  final String route;
  final List<String> tags;
}

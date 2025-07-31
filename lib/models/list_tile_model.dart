class ListTileModel {
  final String image;
  final String title;
  final String subtitle;
  final String? time;
  ListTileModel({
    required this.image,
    required this.title,
    required this.subtitle,
    this.time,
  });
}

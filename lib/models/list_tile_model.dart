class ListTileModel {
  final String image;
  final String title;
  final String subtitle;
  final String? time;
  final String? text1, text2;
  final String? svg;

  ListTileModel({
    required this.image,
    required this.title,
    required this.subtitle,
    this.time,
    this.text1,
    this.text2,
    this.svg,
  });
}

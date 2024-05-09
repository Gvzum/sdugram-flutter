class EventTicketModel {
  final DateTime startTime;
  final String? price;
  final String title;
  final String? subtitle;
  final String backgroundImage;

  EventTicketModel(
      {required this.startTime,
      required this.price,
      required this.title,
      required this.subtitle,
      required this.backgroundImage});
}

class EventModel {
  final int id;
  final DateTime startTime;
  final String? location;
  final String? price;
  final int? quantity;
  final int? availableTickets;

  EventModel(
      {required this.id,
      required this.availableTickets,
      required this.startTime,
      this.location,
      this.price,
      this.quantity});
}

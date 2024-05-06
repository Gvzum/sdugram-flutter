class CreateTicket {
  final String paymentStatus;
  final int eventId;
  final String ticketId;
  final String qrImageUrl;

  CreateTicket(
      {required this.paymentStatus,
      required this.eventId,
      required this.ticketId,
      required this.qrImageUrl});
}

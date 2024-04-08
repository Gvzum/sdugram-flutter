import 'package:freezed_annotation/freezed_annotation.dart';

class EventModel {
  final int id;
  final DateTime startTime;
  final String? location;
  final String? price;
  final int? quantity;

  EventModel(
      {required this.id,
      required this.startTime,
      this.location,
      this.price,
      this.quantity});
}

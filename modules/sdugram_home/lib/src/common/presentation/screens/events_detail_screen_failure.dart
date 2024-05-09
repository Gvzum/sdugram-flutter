import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

@RoutePage()
class EventsDetailScreenFailure extends StatelessWidget {
  const EventsDetailScreenFailure(
      {super.key, @PathParam('failure') required this.failure});

  final String failure;

  @override
  Widget build(BuildContext context) {
    return SduErrorPage(
      statusTitle: failure,
      primaryOnPress: () {
        context.router.popForced();
      },
      primaryTitle: 'Back',
      reverseButtons: false,
    );
  }
}

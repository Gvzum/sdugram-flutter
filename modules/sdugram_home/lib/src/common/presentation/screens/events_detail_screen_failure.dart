import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/sdugram_home.dart';

@RoutePage()
class EventsDetailScreenFailure extends StatelessWidget {
  const EventsDetailScreenFailure(
      {super.key, @pathParam required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return SduErrorPage(
      statusTitle: message,
      primaryOnPress: () {
        context.read<HomeBloc>().add(HomeStarted());
      },
      primaryTitle: 'Back',
      reverseButtons: false,
    );
  }
}

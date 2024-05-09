import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/src/common/domain/models/club_detail_model.dart';
import 'package:sdugram_home/src/common/presentation/blocs/detail/home_club_detail_bloc.dart';
import 'package:sdugram_home/src/common/presentation/blocs/detail/home_club_detail_state.dart';

@RoutePage()
class ClubDetailScreen extends StatelessWidget {
  const ClubDetailScreen({super.key, @pathParam required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.di<HomeClubDetailBloc>(param1: id),
      child: BlocBuilder<HomeClubDetailBloc, HomeClubDetailState>(
          builder: (context, state) {
        return state.clubDetail.when(initial: () {
          return const SizedBox.shrink();
        }, loading: () {
          return const Scaffold(body: Center(child: CircularLoader()));
        }, failure: (failure) {
          return Center(child: Text(failure.message));
        }, success: (detail) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: kClubDetailsColor,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  HeaderSection(
                    detail: detail,
                  ),
                  if (detail.activeEvents.isNotEmpty)
                    ActiveEventsSection(
                      detail: detail,
                    )
                ],
              ),
            ),
          );
        });
      }),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.detail});

  final ClubDetailModel detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: kClubDetailsColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(
                40,
              ))),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 16,
          bottom: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              detail.username,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              detail.bio,
              style: const TextStyle(
                  fontSize: 16, color: kClubDetailsDescriptionColor),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveEventsSection extends StatelessWidget {
  const ActiveEventsSection({super.key, required this.detail});

  final ClubDetailModel detail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 24),
            child: Text(
              'ACTIVE EVENTS',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, color: kTextColor),
            ),
          ),
          Column(
            children: detail.activeEvents.map((event) {
              final String date = DateFormat("MMM d yyyy HH:mm").format(event.publishedDate);
              return ActiveEventCard(
                imageUrl: event.backgroundImage ?? kDefaultImageUrl,
                title: event.title,
                date: date,
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class ActiveEventCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;

  const ActiveEventCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.network(
                    imageUrl,
                    height: 68,
                    width: 68,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[850],
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

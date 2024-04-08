import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_bloc.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_state.dart';
import 'package:sdugram_home/src/common/presentation/widgets/event_card_view.dart';

@RoutePage()
class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => context.di<HomeBloc>(),
        child: BlocConsumer<HomeBloc, HomeState>(
            listener: (blocContext, state) {},
            builder: (blocContext, state) {
              switch (state) {
                case HomeLoading():
                  return const Scaffold(body: Center(child: CircularLoader()));
                case HomeSuccess(listArticles: final articles):
                  return Scaffold(
                    backgroundColor: kBackgroundColor,
                    body: ListView.builder(
                        itemCount: articles.results.length,
                        itemBuilder: (context, index) {
                          final article = articles.results[index];
                          return EventCardView(
                            logoUrl: article.backgroundImage ?? '',
                            clubName: article.author.username,
                            info: article.title,
                            time:
                                '${DateTime.now().difference(article.publishedDate).inHours} hours ago published',
                          );
                        }),
                  );
                default:
                  return const Scaffold(body: Center(child: CircularLoader()));
              }
            }));
  }
}

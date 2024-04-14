import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_bloc.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_state.dart';
import 'package:sdugram_home/src/common/presentation/widgets/event_card_view.dart';
import 'package:sdugram_home/src/common/presentation/widgets/event_detail_screen_popover.dart';

@RoutePage()
class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<HomeBloc, HomeState>(
            listener: (blocContext, state) {
              switch(state) {

                case HomeFailure(failure: final failure):
                  if (failure is UnauthorizedFailure) {
                    blocContext.router.replaceNamed('/login');
                  }
                default: break;
              }
            },
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
                            bgUrl: article.backgroundImage ?? 'https://www.tea-tron.com/antorodriguez/blog/wp-content/uploads/2016/04/image-not-found-4a963b95bf081c3ea02923dceaeb3f8085e1a654fc54840aac61a57a60903fef.png',
                            logoUrl: article.author.avatar ?? 'https://www.tea-tron.com/antorodriguez/blog/wp-content/uploads/2016/04/image-not-found-4a963b95bf081c3ea02923dceaeb3f8085e1a654fc54840aac61a57a60903fef.png',
                            clubName: article.author.username,
                            info: article.title,
                            time:
                                '${DateTime.now().difference(article.publishedDate).inHours} hours ago published',
                            onTap: () {
                              openConfirmPopup(blocContext);
                            },
                          );
                        }),
                  );
                default:
                  return const Scaffold(body: Center(child: CircularLoader()));
              }
            });
  }

  Future<void> openConfirmPopup(
    BuildContext blocContext,
  ) async {
    await bccPopover(
      context: blocContext,
      pages: [
        BccPopoverPage(
          pageBuilder: (context) {
            return EventDetailScreenPopover();
          },
          routeName: '/',
        ),
      ],
    );
  }
}

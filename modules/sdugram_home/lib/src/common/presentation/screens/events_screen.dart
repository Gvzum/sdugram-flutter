import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/domain.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_home/src/common/domain/models/article_detail_model.dart';
import 'package:sdugram_home/src/common/domain/models/credit_card_model.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_bloc.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_event.dart';
import 'package:sdugram_home/src/common/presentation/blocs/home_state.dart';
import 'package:sdugram_home/src/common/presentation/widgets/event_card_view.dart';
import 'package:sdugram_home/src/common/presentation/widgets/event_detail_screen_popover.dart';
import 'package:sdugram_home/src/common/presentation/widgets/payment_method_popup.dart';

@RoutePage()
class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(listener: (blocContext, state) {
      state.eventState.whenOrNull(failure: (failure) {
        if (failure is UnauthorizedFailure) {
          SduOverlayLoader().hide();
          blocContext.router.replaceNamed('/login/nothing');
        } else {
          SduOverlayLoader().hide();
          SduAlert(
              title: failure.message,
              description: '',
              buttonLabel: 'buttonLabel',
              onPressed: () {});
        }
      });

      state.detailEventState.when(
        initial: () {},
        loading: () {
          SduOverlayLoader().show(context);
        },
        failure: (failure) {
          context.router.replaceNamed('error/:${failure.message}');
        },
        success: (article) {
          SduOverlayLoader().hide();
          openConfirmPopup(blocContext, article);
        },
        cards: (cards) {
          SduOverlayLoader().hide();
          _showPaymentMethodPopup(blocContext, cards);
        },
        addSuccess: () {
          SduOverlayLoader().hide();
        },
      );
    }, builder: (blocContext, state) {
      return state.eventState.maybeWhen(success: (articles) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: ListView.builder(
              itemCount: articles.results.length,
              itemBuilder: (context, index) {
                final article = articles.results[index];
                return EventCardView(
                  bgUrl: article.backgroundImage ?? kDefaultImageUrl,
                  logoUrl: article.author.avatar ?? kDefaultImageUrl,
                  clubName: article.author.username,
                  info: article.title,
                  time:
                      '${DateTime.now().difference(article.publishedDate).inHours} hours ago published',
                  onTap: () {
                    context
                        .read<HomeBloc>()
                        .add(HomeEventPressed(id: article.id));
                  },
                );
              }),
        );
      }, loading: () {
        return const Scaffold(body: Center(child: CircularLoader()));
      }, orElse: () {
        return const SizedBox();
      });
    });
  }

  Future<void> openConfirmPopup(
      BuildContext blocContext, ArticleDetailModel article) async {
    await bccPopover(
      context: blocContext,
      pages: [
        BccPopoverPage(
          pageBuilder: (context) {
            return EventDetailScreenPopover(
              startTime: article.publishedDate.toString(),
              location: article.event?.location ?? 'SDU',
              quantity: article.event?.quantity ?? 0,
              price: article.event?.price,
              title: article.title,
              body: article.body ?? '',
              categories: article.categories,
              subtitle: article.subtitle,
              image: article.backgroundImage ?? kDefaultImageUrl,
              onPressed: (article.event?.quantity ?? 0) == 0
                  ? null
                  : article.event?.price != null
                      ? () {
                          blocContext.read<HomeBloc>().add(HomeBuyPressed());
                        }
                      : () {
                          showAlert(
                            context,
                            title: 'Are you sure you have a seat?',
                            description: '13:40',
                            buttonLabel: 'Yes',
                            onPressed: () {
                              context.router.popForced();
                              context.router.replaceNamed('/success');
                            },
                          );
                        },
              username: article.author.username,
            );
          },
          routeName: '/',
        ),
      ],
    );
  }

  Future<void> _showPaymentMethodPopup(
      BuildContext blocContext, ListCreditCardModel cards) async {
    await bccPopover(
      context: blocContext,
      pages: [
        BccPopoverPage(
          pageBuilder: (context) {
            return PaymentMethodPopup(cards: cards);
          },
          routeName: '/',
        ),
      ],
    );
  }
}

void showAlert(
  BuildContext context, {
  required String title,
  required String description,
  required String buttonLabel,
  required Function()? onPressed,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SduAlert(
        title: title,
        description: description,
        buttonLabel: buttonLabel,
        onPressed: onPressed,
      );
    },
  );
}

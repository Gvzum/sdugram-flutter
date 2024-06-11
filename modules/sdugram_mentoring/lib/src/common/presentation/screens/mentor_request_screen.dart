import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sdugram_mentoring/sdugram_mentoring.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/request/mentoring_request_bloc.dart';
import 'package:sdugram_mentoring/src/common/presentation/blocs/request/mentoring_request_state.dart';

import 'package:sdugram_mentoring/src/common/presentation/widgets/student_cart_view.dart';

@RoutePage()
class MentorRequestScreen extends StatelessWidget {
  const MentorRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.di<MentoringRequestBloc>(),
      child: BlocConsumer<MentoringRequestBloc, MentoringRequestState>(
        listener: (context, state) {
          state.navigation.whenOrNull(loading: () {
            SduOverlayLoader().show(context);
          }, createSuccess: () {
            SduOverlayLoader().hide();
            context.router.popForced();
          }, sendRequestSuccess: () {
            // SduOverlayLoader().hide();
            context.router.maybePop();
            context.read<MentoringRequestBloc>().add(MentoringRequestStarted());
          });
        },
        buildWhen: (oldState, newState) {
          return oldState.mentoringStatus != newState.mentoringStatus;
        },
        builder: (context, state) {
          return Scaffold(
              backgroundColor: kBackgroundColor,
              appBar: AppBar(
                backgroundColor: kBackgroundColor,
                title: const Text(
                  'Requests',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              body: state.mentoringStatus.when(
                success: (mentors) {
                  return ListView.builder(
                      itemCount: mentors.length,
                      itemBuilder: (context, index) {
                        final mentor = mentors[index];
                        return StudentCardView(
                          mentee: mentor,
                        );
                      });
                },
                loading: () {
                  return const Scaffold(body: Center(child: CircularLoader()));
                },
                failure: (failure) {
                  return Center(child: Text(failure.message));
                },
                initial: () {
                  return const SizedBox.shrink();
                },
                emptySuccess: () {
                  return const SizedBox.shrink();
                },
              ));
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sdugram_core/src/common/presentation/components/sdu_alert/sdu_alert.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Mentoring'),
          ),
          body: Center(
              child: ElevatedButton(
                onPressed: () {
                  show(
                    context,
                    title: 'Do you want to become a student of this mentor?',
                    description: 'При добавление этого студента в менторства...',
                    buttonLabel: 'OK',
                    onPressed: () {},
                  );
                },
                child: Text('press'),
              )));
    }

    void show(
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
            onPressed: () {},
          );
        },
      );
    }
  }



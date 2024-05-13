import 'package:flutter/cupertino.dart';

class ScreenAlertBox extends StatelessWidget {
  const ScreenAlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Icon(CupertinoIcons.arrow_left),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        child: Center(
            child: CupertinoButton(
          child: Text('Alert Box'),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text('Alert'),
                  content: Text('are you want to continue ?'),
                  actions: [
                    CupertinoDialogAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        isDestructiveAction: true,
                        child: Text('No')),
                    CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Yes'))
                  ],
                );
              },
            );
          },
        )));
  }
}

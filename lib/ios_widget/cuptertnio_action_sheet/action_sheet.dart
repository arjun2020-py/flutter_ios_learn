import 'package:flutter/cupertino.dart';

class CupertnioActionSheets extends StatelessWidget {
  const CupertnioActionSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.arrow_left),
          ),
        ),
        child: Center(
          child: CupertinoButton(
            child: Text('Cupertnio Action sheet'),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoActionSheet(
                    title: Text('Flutter ios App'),
                    message: Text('Your Message'),
                    actions: [
                      CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Do Something.....')),
                      CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Do something else....'))
                    ],
                  );
                },
              );
            },
          ),
        ));
  }
}

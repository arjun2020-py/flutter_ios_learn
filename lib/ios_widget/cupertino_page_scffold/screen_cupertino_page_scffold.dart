import 'package:flutter/cupertino.dart';

class CupertinoPagesScffold extends StatelessWidget {
  const CupertinoPagesScffold({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CupertinoColors.activeBlue,
        primaryColor: CupertinoColors.activeOrange,
      ),
      home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: CupertinoButton(
              child: Icon(CupertinoIcons.arrow_left),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            middle: Text('ios app widget'),
          ),
          child: Center(child: Text('first ios app with flutter'))),
    );
  }
}

import 'package:flutter/cupertino.dart';

class ScreenCupternoApp extends StatelessWidget {
  const ScreenCupternoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
       debugShowCheckedModeBanner: false,
       theme:CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CupertinoColors.activeBlue,
        primaryColor: CupertinoColors.activeOrange
       ) ,
       home: Text('first ios app with  flutter'),
    );
  }
}

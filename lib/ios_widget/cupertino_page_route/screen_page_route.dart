import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenCupertinoPageRoute extends StatelessWidget {
  const ScreenCupertinoPageRoute({super.key});

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
          middle: Text('Ios Flutter app'),
        ),
        child: Center(
          child: CupertinoButton(
            child: Text('Click For page 2'),
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => ScreenTwo(),
              ));
            },
          ),
        ));
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Center(
        child: Text('page 2'),
      ),
    );
  }
}

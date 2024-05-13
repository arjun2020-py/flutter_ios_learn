import 'package:flutter/cupertino.dart';

class ActvityIndictor extends StatelessWidget {
  const ActvityIndictor({super.key});

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
          child: CupertinoActivityIndicator(
            radius: 30,
            color: CupertinoColors.activeGreen,
          ),
        ));
  }
}

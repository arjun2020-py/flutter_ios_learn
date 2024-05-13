import 'package:flutter/cupertino.dart';

class ScreenCupertinoButton extends StatelessWidget {
  const ScreenCupertinoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.black,
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Icon(CupertinoIcons.arrow_left),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                //  borderRadius: BorderRadius.circular(20),
                // color: CupertinoColors.activeOrange,
                child: Text('Enlabled'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoButton.filled(
                child: Text('Enabled'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}

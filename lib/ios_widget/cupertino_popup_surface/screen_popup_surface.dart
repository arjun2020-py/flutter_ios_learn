import 'package:flutter/cupertino.dart';

class ScreenPopupSurface extends StatelessWidget {
  const ScreenPopupSurface({super.key});

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
            child: Text('Click Here'),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return CupertinoPopupSurface(
                    child: Container(
                      color: CupertinoColors.white,
                      height: 400,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: CupertinoButton(
                        child: Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}

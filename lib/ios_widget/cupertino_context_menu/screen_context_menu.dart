import 'package:flutter/cupertino.dart';

class ScreenCupertinoContextMenu extends StatelessWidget {
  const ScreenCupertinoContextMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.activeBlue,
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Icon(CupertinoIcons.arrow_left),
            onPressed: () {},
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: CupertinoContextMenu(
                actions: [
                  CupertinoContextMenuAction(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('option 1')),
                  CupertinoContextMenuAction(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('option 2'))
                ],
                child: Image.network(
                    'https://t3.ftcdn.net/jpg/04/74/05/94/360_F_474059464_qldYuzxaUWEwNTtYBJ44VN89ARuFktHW.jpg')),
          ),
        ));
  }
}

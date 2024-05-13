import 'package:flutter/cupertino.dart';

class ScreenScrollBar extends StatelessWidget {
  const ScreenScrollBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Icon(CupertinoIcons.arrow_left),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          middle: Text('Ios Flutter App'),
        ),
        // backgroundColor: CupertinoColors.black,
        child: CupertinoScrollbar(
            thickness: 6,
            thicknessWhileDragging: 10,
            radius: Radius.circular(30),
            radiusWhileDragging: Radius.zero,
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    '$index',
                    style: TextStyle(fontSize: 30),
                  ),
                );
              },
            )),
      ),
    );
  }
}

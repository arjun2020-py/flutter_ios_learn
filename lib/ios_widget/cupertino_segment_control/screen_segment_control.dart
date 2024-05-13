import 'package:flutter/cupertino.dart';

class ScreenCuptenioSegmentControl extends StatefulWidget {
  ScreenCuptenioSegmentControl({super.key});

  @override
  State<ScreenCuptenioSegmentControl> createState() =>
      _ScreenCuptenioSegmentControlState();
}

class _ScreenCuptenioSegmentControlState
    extends State<ScreenCuptenioSegmentControl> {
  String? currentText;

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
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                CupertinoSegmentedControl(
                  children: {
                    'Flutter': Container(
                      color: currentText == 'Flutter'
                          ? CupertinoColors.systemOrange
                          : CupertinoColors.white,
                      width: 80,
                      padding: EdgeInsets.all(8),
                    ),
                    'Dart': Container(
                      color: currentText == 'Dart'
                          ? CupertinoColors.systemOrange
                          : CupertinoColors.white,
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                    ),
                    'Youtube': Container(
                      color: currentText == 'Youtube'
                          ? CupertinoColors.systemOrange
                          : CupertinoColors.white,
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                    )
                  },
                  onValueChanged: (value) {
                    setState(() {
                      currentText = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                currentText != null ? Text(currentText!) : Container()
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/cupertino.dart';

class ScreenDatePicker extends StatefulWidget {
  const ScreenDatePicker({super.key});

  @override
  State<ScreenDatePicker> createState() => _ScreenDatePickerState();
}

class _ScreenDatePickerState extends State<ScreenDatePicker> {
  DateTime dateTime = DateTime.now();
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
            child: Text(
                'From Date: ${dateTime.day} : ${dateTime.month} : ${dateTime.year} '),
            onPressed: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) => SizedBox(
                        height: 250,
                        child: CupertinoDatePicker(
                          backgroundColor: CupertinoColors.white,
                          initialDateTime: dateTime,
                          onDateTimeChanged: (DateTime newTime) {
                            setState(() {
                               dateTime = newTime;
                            });
                          },
                          use24hFormat: true,
                        ),
                      ));
            },
          ),
        ));
  }
}
/*

CupertinoDatePicker(
                    initialDateTime: dateTime,
                    onDateTimeChanged: (value) {
                      setState(() => dateTime = value);
                    },
                  );

*/
import 'package:flutter/cupertino.dart';

class ScreenCupternioPicker extends StatefulWidget {
  const ScreenCupternioPicker({super.key});

  @override
  State<ScreenCupternioPicker> createState() => _ScreenCupternioPickerState();
}

class _ScreenCupternioPickerState extends State<ScreenCupternioPicker> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            leading: CupertinoButton(
          child: Icon(CupertinoIcons.arrow_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              CupertinoButton(
                child: Text('Cuptenio Picker'),
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: CupertinoPicker(
                              backgroundColor: CupertinoColors.white,
                              scrollController:
                                  FixedExtentScrollController(initialItem: 1),
                              itemExtent: 30,
                              onSelectedItemChanged: (int pickedValue) {
                                setState(() {
                                  selectedValue = pickedValue;
                                });
                              },
                              children: [Text('1'), Text('2'), Text('3')]));
                    },
                  );
                },
              ),
           
            ],
          ),
        ));
  }
}

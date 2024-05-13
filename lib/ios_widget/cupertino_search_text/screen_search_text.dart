import 'package:flutter/cupertino.dart';

class ScreenCupertnioSearchText extends StatelessWidget {
  ScreenCupertnioSearchText({super.key});
  final TextEditingController controller = TextEditingController(text: 'name');
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
          child: Container(
            decoration: BoxDecoration(
              color: CupertinoColors.activeOrange,
            ),
            padding: EdgeInsets.all(10),
            child: CupertinoSearchTextField(
              controller: controller,
            ),
          ),
        ));
  }
}

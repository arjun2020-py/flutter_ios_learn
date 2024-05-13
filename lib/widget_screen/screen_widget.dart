import 'package:flutter/material.dart';

import '../ios_widget/cupertino_alert_box/screen_alert_box.dart';
import '../ios_widget/cupertino_button/cupertino_button.dart';
import '../ios_widget/cupertino_context_menu/screen_context_menu.dart';
import '../ios_widget/cupertino_date_picker/screen_date_picker.dart';
import '../ios_widget/cupertino_page_route/screen_page_route.dart';
import '../ios_widget/cupertino_page_scffold/screen_cupertino_page_scffold.dart';
import '../ios_widget/cupertino_picker/screen_cuptenio_picker.dart';
import '../ios_widget/cupertino_popup_surface/screen_popup_surface.dart';
import '../ios_widget/cupertino_scroll_bar/screen_scroll_bar.dart';
import '../ios_widget/cupertino_search_text/screen_search_text.dart';
import '../ios_widget/cupertino_segment_control/screen_segment_control.dart';
import '../ios_widget/cupertno_app/cupertno_app.dart';
import '../ios_widget/cupternio_actvity_indcitor/screen_actvity_indictor.dart';
import '../ios_widget/cuptertnio_action_sheet/action_sheet.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cupertino widgets  in flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenCupternoApp(),
                  ));
                },
                child: Text('cupertino App')),
                 ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CupertinoPagesScffold(),
                  ));
                },
                child: Text('cupertino Page Scffold')),
                 ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CupertnioActionSheets(),
                  ));
                },
                child: Text('cupertino Action Sheet')),

                 ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ActvityIndictor(),
                  ));
                },
                child: Text('cupertino Actvity Indctior')),
                ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenAlertBox(),
                  ));
                },
                child: Text('cupertino Alert Box')),

                  ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenCupertinoButton(),
                  ));
                },
                child: Text('cupertino Button')),
                  ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenDatePicker(),
                  ));
                },
                child: Text('cupertino Date picker')),

                
                  ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenCupertinoPageRoute(),
                  ));
                },
                child: Text('cupertino Page Route')),


                 ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenCupternioPicker(),
                  ));
                },
                child: Text('cupertino Picker')),

                  ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenPopupSurface(),
                  ));
                },
                child: Text('cupertino Popup Surface')),
                
                ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenScrollBar(),
                  ));
                },
                child: Text('cupertino Scroll Bar')),
                 ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenCupertnioSearchText(),
                  ));
                },
                child: Text('cupertino search Bar')),
                 ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScreenCuptenioSegmentControl(),
                  ));
                },
                child: Text('cupertino  Segment Control')),

          ],// ScreenCupertinoContextMenu
          //ScreenDatePicker 
          //ScreenCupertinoPageRoute
          //ScreenCupternioPicker
          //ScreenPopupSurface
          //ScreenScrollBar
          //ScreenCupertnioSearchText
          //ScreenCuptenioSegmentControl
        ),
      ),
    );
    //
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_widget_library/global.dart';
import 'package:flutter_widget_library/widgets/MouseCursorIcons.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mainScreenW,
      child: Column(
        children: [
          ExpansionTile(title: Text("Mouse Cursors", style: TextStyle(color: Colors.white),), children: [MouseCursorIcons()],)
          
        ],
      ),
    );
  }
}
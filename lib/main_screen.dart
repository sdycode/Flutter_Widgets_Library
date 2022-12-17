import 'package:flutter/material.dart';
import 'package:flutter_widget_library/global.dart';
import 'package:flutter_widget_library/widgets/mainWidget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(children: [
        MainScreenWidget()
      ],)
    );
  }
}
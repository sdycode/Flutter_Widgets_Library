import 'package:flutter/material.dart';
import 'package:flutter_widget_library/global.dart';
import 'package:flutter_widget_library/main_screen.dart';
import 'package:flutter_widget_library/providers/mainscreen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainScreenProvider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Builder(builder: (context) {
            reInitiaiseGlobalFields(context);
            return MainScreen();
          })),
    );
  }
}

void reInitiaiseGlobalFields(BuildContext context) {
  w = MediaQuery.of(context).size.width;
  h = MediaQuery.of(context).size.height;
  mainScreenW = w * 0.9;
  mainScreenH = h * 0.8;
}

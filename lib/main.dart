import 'package:flutter/cupertino.dart';
import 'package:ios_wa_ui/view/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(scaffoldBackgroundColor: CupertinoColors.black),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

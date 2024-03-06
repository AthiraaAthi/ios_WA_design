import 'package:flutter/cupertino.dart';
import 'package:ios_wa_ui/utils/color_constant/color_constant.dart';
import 'package:ios_wa_ui/view/call_screen/call_screen.dart';
import 'package:ios_wa_ui/view/camera_screen/camera_screen.dart';
import 'package:ios_wa_ui/view/home_screen/home_screen.dart';
import 'package:ios_wa_ui/view/status_screen/status_screen.dart';
import 'package:ios_wa_ui/view/sttings_screen/settings_screen.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          backgroundColor: ColorConstant.darkgrey,
          onTap: (index) {
            print("Clicked tab $index");
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.play_circle), label: "Status"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.camera), label: "Camera"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone), label: "Calls"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: "Settings"),
          ]),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return HomeScreen();
          case 1:
            return StatusScreen();
          case 2:
            return CameraScreen();
          case 3:
            return CallScreen();
          case 4:
            return SettingsScreen();
        }
        return Container();
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:ios_wa_ui/utils/color_constant/color_constant.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: ColorConstant.black,
            leading: Text(
              "Settings",
              style: TextStyle(
                  fontSize: 20,
                  color: ColorConstant.blue,
                  fontWeight: FontWeight.bold),
            )),
        backgroundColor: ColorConstant.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Settings Screen",
                style: TextStyle(color: ColorConstant.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

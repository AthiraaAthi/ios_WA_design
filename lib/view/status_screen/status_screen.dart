import 'package:flutter/cupertino.dart';
import 'package:ios_wa_ui/utils/color_constant/color_constant.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstant.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Status Screen",
            style: TextStyle(fontSize: 30, color: ColorConstant.white),
          ))
        ],
      ),
    );
  }
}

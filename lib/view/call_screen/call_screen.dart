import 'package:flutter/cupertino.dart';

import '../../utils/color_constant/color_constant.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstant.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Call Screen",
            style: TextStyle(fontSize: 30, color: ColorConstant.white),
          ))
        ],
      ),
    );
  }
}

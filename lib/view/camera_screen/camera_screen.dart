import 'package:flutter/cupertino.dart';

import '../../utils/color_constant/color_constant.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstant.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Camera Screen",
            style: TextStyle(fontSize: 30, color: ColorConstant.white),
          ))
        ],
      ),
    );
  }
}

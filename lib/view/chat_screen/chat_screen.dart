import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_wa_ui/utils/image_constant/image_constant.dart';

import '../../utils/color_constant/color_constant.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  ImageConstant.Image1,
                ),
                radius: 50,
              ),
              Column(
                children: [
                  Text(
                    "Bob",
                    style: TextStyle(color: ColorConstant.white, fontSize: 20),
                  ),
                  Text(
                    "Online",
                    style: TextStyle(color: ColorConstant.white, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 75,
              ),
              Icon(
                CupertinoIcons.video_camera_solid,
                color: ColorConstant.blue,
                size: 35,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                CupertinoIcons.phone_fill,
                color: ColorConstant.blue,
                size: 25,
              )
            ],
          ),
          backgroundColor: ColorConstant.grey,
        ),
        backgroundColor: ColorConstant.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 715,
              width: 500,
              decoration: BoxDecoration(
                  color: CupertinoColors.activeBlue,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/chat.png",
                      ),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}

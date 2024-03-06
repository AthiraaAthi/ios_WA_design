import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_constant/color_constant.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget({
    super.key,
    required this.name,
    required this.des,
    required this.image,
    required this.time,
    this.onTap,
  });

  final String name;
  final String des;
  final String time;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      onTap: onTap,
      padding: EdgeInsets.all(8),
      backgroundColor: ColorConstant.black,
      title: Text(
        name,
        style: TextStyle(
            color: ColorConstant.white,
            fontSize: 20,
            fontWeight: FontWeight.w200),
      ),
      subtitle: Text(
        des,
        style: TextStyle(
            color: ColorConstant.white,
            fontSize: 15,
            fontWeight: FontWeight.w200),
      ),
      leading: CircleAvatar(
        radius: 60,
        backgroundColor: ColorConstant.blue,
        backgroundImage: AssetImage(image),
      ),
      trailing: Column(
        children: [
          CircleAvatar(
              radius: 9,
              backgroundColor: ColorConstant.green,
              child: CircleAvatar(
                backgroundColor: ColorConstant.black,
                radius: 8,
                child: Text(
                  "2",
                  style: TextStyle(color: ColorConstant.green, fontSize: 10),
                ),
              )),
          SizedBox(
            height: 15,
          ),
          Text(
            time,
            style: TextStyle(fontSize: 10, color: ColorConstant.green),
          )
        ],
      ),
    );
  }
}

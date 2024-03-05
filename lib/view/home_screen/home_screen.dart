import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        middle: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Chats",
                style: TextStyle(
                  fontSize: 20,
                  color: CupertinoColors.activeBlue,
                ),
              ),
              SizedBox(
                width: 230,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.square_pencil,
                    color: CupertinoColors.activeGreen,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    CupertinoIcons.add_circled_solid,
                    color: CupertinoColors.activeGreen,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 30,
              width: 350,
              color: CupertinoColors.white,
            )
          ],
        ),
      ),
    );
  }
}

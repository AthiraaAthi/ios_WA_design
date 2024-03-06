import 'package:flutter/cupertino.dart';

import 'package:ios_wa_ui/utils/color_constant/color_constant.dart';
import 'package:ios_wa_ui/view/chat_screen/chat_screen.dart';
import 'package:ios_wa_ui/view/sttings_screen/settings_screen.dart';
import 'package:ios_wa_ui/widgets/bottom_nav_widget.dart';
import 'package:ios_wa_ui/widgets/list_tile_widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> images = [
    "assets/images/Panda♡.jpeg",
    "assets/images/We Bare Bears Desktop Wallpapers - Wallpaper Cave 9E2.jpeg",
    "assets/images/wp5055469-cartoon-pastel-aesthetic-laptop-wallpapers.png",
    "assets/images/wp7005775-yeontan-wallpapers .jpg",
    "assets/images/wp12979699-cute-cartoon-laptop-wallpapers.jpg",
    "assets/images/wp12979886-cute-cartoon-laptop-wallpapers.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
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
                      width: 10,
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
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: ColorConstant.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search for Chats and People",
                        style: TextStyle(color: ColorConstant.grey),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 581,
                  width: 343,
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  color: ColorConstant.black,
                  child: Column(
                    children: [
                      ListTileWidget(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => ChatScreen(),
                              ));
                        },
                        time: "12:10 pm",
                        name: "Bob",
                        des: "Hello",
                        image: images[0],
                      ),
                      ListTileWidget(
                        name: "Richard",
                        des: "hiiiiiiiiii",
                        time: "12:10 pm",
                        image: images[1],
                      ),
                      ListTileWidget(
                        name: "Tae",
                        des: "Naekkoyaa",
                        time: "12:10 pm",
                        image: images[3],
                      ),
                      ListTileWidget(
                        name: "Jungkook",
                        time: "12:10 pm",
                        des: "des",
                        image: images[2],
                      ),
                      ListTileWidget(
                        name: "Donald",
                        time: "12:10 pm",
                        des: "des",
                        image: images[4],
                      ),
                      ListTileWidget(
                        name: "Arthur",
                        des: "des",
                        time: "12:10 pm",
                        image: images[5],
                      ),
                      ListTileWidget(
                        name: "Marshall",
                        des: "des",
                        time: "12:10 pm",
                        image: images[0],
                      ),
                      ListTileWidget(
                        name: "lily",
                        des: "des",
                        time: "12:10 pm",
                        image: images[1],
                      ),
                      ListTileWidget(
                        name: "Ted",
                        des: "des",
                        time: "12:10 pm",
                        image: images[4],
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

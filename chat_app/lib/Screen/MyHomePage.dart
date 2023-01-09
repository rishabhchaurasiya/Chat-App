import 'package:chat_app/Screen/calls.dart';
import 'package:chat_app/Screen/chats.dart';
import 'package:chat_app/Screen/person.dart';
import 'package:chat_app/Screen/settings.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var screens = [Chats(), Calls(), Persons(), Settings()];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        resizeToAvoidBottomInset: true,
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              label: "Chats",
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            ),
            BottomNavigationBarItem(
              label: "Calls",
              icon: Icon(CupertinoIcons.phone),
            ),
            BottomNavigationBarItem(
              label: "Person",
              icon: Icon(CupertinoIcons.person_alt_circle),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(CupertinoIcons.settings_solid),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screens[index];
        },
      ),
    );
  }
}

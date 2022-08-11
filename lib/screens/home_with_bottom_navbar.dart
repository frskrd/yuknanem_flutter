import 'package:flutter/material.dart';
import 'package:yuknanem/utilities/constant.dart';
import 'package:yuknanem/screens/article.dart';
import 'package:yuknanem/screens/chat.dart';
import 'package:yuknanem/screens/profile.dart';
import 'package:yuknanem/screens/home.dart';

class ExtendsMain extends StatefulWidget {
  const ExtendsMain({Key? key}) : super(key: key);

  @override
  State<ExtendsMain> createState() => _ExtendsMainState();
}

class _ExtendsMainState extends State<ExtendsMain> {
  List pages = [
    const Home(),
    const Article(),
    const Chat(),
    const Profile(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: SizedBox(
          height: 104,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: primaryColor,
            selectedItemColor: secondaryColor,
            unselectedItemColor: secondaryColor.withOpacity(0.5),
            iconSize: 24,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: onTap,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                    currentIndex == 0 ? Icons.house : Icons.house_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(currentIndex == 1
                      ? Icons.article
                      : Icons.article_outlined),
                  label: 'Article',
                  backgroundColor: primaryColor),
              BottomNavigationBarItem(
                icon:
                    Icon(currentIndex == 2 ? Icons.chat : Icons.chat_outlined),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    currentIndex == 3 ? Icons.person : Icons.person_outlined),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}

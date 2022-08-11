import 'package:flutter/material.dart';
import 'package:yuknanem/utilities/constant.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 110,
              decoration: BoxDecoration(
                color: secondaryColor,
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 75),
                child: Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black45,
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/user.jpeg',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Fauzan Rivaldo Sukardi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Junior Flutter Developer',
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.nightlight_outlined,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Dark Version',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                      activeColor: primaryColor,
                      value: lightOn,
                      onChanged: (bool value) {
                        setState(() {
                          lightOn = value;
                        });
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

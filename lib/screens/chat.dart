import 'package:flutter/material.dart';
import 'package:yuknanem/models/messaging.dart';
import 'package:yuknanem/models/story.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 206,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 80,
                    decoration: const BoxDecoration(),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 25, right: 35),
                      scrollDirection: Axis.horizontal,
                      itemCount: storyData.length,
                      itemBuilder: (context, index) {
                        final Story story = storyData[index];

                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(story.userImage),
                                radius: 30,
                              ),
                              Text(
                                story.name,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 35, top: 10),
                itemCount: chatData.length,
                itemBuilder: (context, index) {
                  final Messaging chat = chatData[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            chat.userUrl,
                          ),
                          radius: 35,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chat.name,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              height: 46,
                              child: Text(
                                chat.message,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: Text(
                            chat.time,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yuknanem/models/news.dart';
import 'package:yuknanem/utilities/constant.dart';

class ArticleDetail extends StatelessWidget {
  const ArticleDetail({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    image: DecorationImage(
                        image: AssetImage(news.newsImage), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  bottom: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 50,
                        child: Text(
                          news.title,
                          style: TextStyle(
                            fontSize: 20,
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        news.date,
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 23),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              news.userImage,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            news.userName,
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            height: 20,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: secondaryColor.withOpacity(0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                side: BorderSide(
                                  width: 1,
                                  color: secondaryColor,
                                ),
                              ),
                              child: const Text(
                                'Follow',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_border_outlined,
                              color: secondaryColor,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 19),
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  width: 358,
                  child: Text(
                    news.description,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}

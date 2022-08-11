import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yuknanem/utilities/constant.dart';
import 'package:yuknanem/models/news.dart';
import 'package:yuknanem/screens/article_detail.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
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
                    'Article',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: height,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: newsData.length,
                        itemBuilder: ((context, index) {
                          final News news = newsData[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ArticleDetail(
                                    news: news,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 169,
                              margin: const EdgeInsets.only(
                                bottom: 10,
                                left: 35,
                                right: 35,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      news.newsImage,
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 25,
                                    left: 17,
                                    child: SizedBox(
                                      width: 257,
                                      height: 42,
                                      child: Text(
                                        news.title,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: secondaryColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

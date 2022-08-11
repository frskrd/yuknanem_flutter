import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yuknanem/models/plant.dart';
import 'package:yuknanem/screens/bookmarks.dart';
import 'package:yuknanem/screens/home_indoor_list_detail.dart';
import 'package:yuknanem/screens/home_outdoor_list_detail.dart';
import 'package:yuknanem/screens/home_recommendation_list_detail.dart';
import 'package:yuknanem/screens/notifications.dart';
import 'package:yuknanem/screens/profile.dart';
import 'package:yuknanem/utilities/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        body: Column(
          children: [
            const HeaderWithSearchBar(),
            Expanded(
              child: SizedBox(
                width: myWidth,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 35,
                          right: 35,
                          top: 7,
                          bottom: 16,
                        ),
                        child: TitleWithViewButton(name: 'Recommendation'),
                      ),
                      RecommendationList(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 35,
                          right: 35,
                          top: 30,
                          bottom: 18,
                        ),
                        child: TitleWithViewButton(name: 'Indoor'),
                      ),
                      IndoorList(),
                      Padding(
                          padding: EdgeInsets.only(
                            left: 35,
                            right: 35,
                            top: 30,
                            bottom: 18,
                          ),
                          child: TitleWithViewButton(name: 'Outdoor')),
                      OutdoorList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 237,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: primaryColor,
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 71, left: 35),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Profile(),
                            ));
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: secondaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/user.jpeg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 65, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello!',
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'Guy Hawkins',
                          style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(top: 65, left: 15, right: 35),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Notifications(),
                                ));
                          },
                          icon: Icon(
                            Icons.notifications_none_outlined,
                            color: secondaryColor,
                            size: 34,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Bookmarks(),
                                ));
                          },
                          icon: Icon(
                            Icons.bookmark_border,
                            color: secondaryColor,
                            size: 34,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 41,
                margin: const EdgeInsets.only(top: 24, left: 35, right: 35),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  cursorColor: secondaryColor,
                  style: TextStyle(color: secondaryColor),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: secondaryColor.withOpacity(0.3),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: secondaryColor),
                    prefixIcon: Icon(
                      Icons.search,
                      color: secondaryColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: secondaryColor.withOpacity(0.2),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: secondaryColor.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class RecommendationList extends StatelessWidget {
  const RecommendationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 289,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 25),
        scrollDirection: Axis.horizontal,
        itemCount: recommendedData.length,
        itemBuilder: (context, index) {
          final Plant plant = recommendedData[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecommendedPlantDetail(
                    plant: plant,
                  ),
                ),
              );
            },
            child: Container(
              width: 189,
              height: 289,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 5,
                    child: Image.asset(
                      plant.plantImage,
                      width: 180,
                      height: 180,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 189,
                      height: 80,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            plant.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: secondaryColor,
                            ),
                          ),
                          Text(
                            plant.genusName,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: secondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class IndoorList extends StatelessWidget {
  const IndoorList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 169,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 25),
        scrollDirection: Axis.horizontal,
        itemCount: indoorData.length,
        itemBuilder: (context, index) {
          final Plant plant = indoorData[index];
          return GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IndoorPlantDetail(
                      plant: plant,
                    ),
                  ));
            }),
            child: Container(
              width: 358,
              height: 169,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Image.asset(
                      plant.plantImage,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 179,
                      height: 168,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            plant.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: secondaryColor,
                            ),
                          ),
                          Text(
                            plant.genusName,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: secondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class OutdoorList extends StatelessWidget {
  const OutdoorList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 169,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 25),
        scrollDirection: Axis.horizontal,
        itemCount: outdoorData.length,
        itemBuilder: (context, index) {
          final Plant plant = outdoorData[index];
          return GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OutdoorPlantDetail(
                      plant: plant,
                    ),
                  ));
            }),
            child: Container(
              width: 358,
              height: 169,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Image.asset(
                      plant.plantImage,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 179,
                      height: 168,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            plant.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: secondaryColor,
                            ),
                          ),
                          Text(
                            plant.genusName,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: secondaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TitleWithViewButton extends StatelessWidget {
  const TitleWithViewButton({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'view more',
            style: TextStyle(
              color: primaryColor,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}

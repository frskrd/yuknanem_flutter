import 'package:flutter/material.dart';
import 'package:yuknanem/utilities/constant.dart';
import 'package:yuknanem/models/plant.dart';
import 'package:yuknanem/widgets/favorite_button.dart';

class OutdoorPlantDetail extends StatelessWidget {
  OutdoorPlantDetail({super.key, required this.plant});
  final Plant plant;

  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: secondaryColor,
                    ),
                  ),
                ),
                Text(
                  'Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: secondaryColor,
                    fontSize: 18,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: FavoriteButton(isSelected: isSelected)),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 170,
                height: 200,
                margin: const EdgeInsets.only(top: 10, left: 35),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: secondaryColor.withOpacity(0.5),
                ),
                child: Image.asset(
                  plant.plantImage,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 12,
                        color: secondaryColor,
                      ),
                    ),
                    Text(
                      plant.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Genus',
                      style: TextStyle(
                        fontSize: 12,
                        color: secondaryColor,
                      ),
                    ),
                    Text(
                      plant.genusName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 12,
                        color: secondaryColor,
                      ),
                    ),
                    Text(
                      plant.category,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Care Level',
                      style: TextStyle(
                        fontSize: 12,
                        color: secondaryColor,
                      ),
                    ),
                    Text(
                      plant.careLevel,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 35, right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SizedBox(
                          width: 358,
                          child: Text(
                            plant.description,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Gallery',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 113,
                      margin: const EdgeInsets.only(bottom: 35),
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: plant.gallery.map((e) {
                            return Container(
                              width: 113,
                              margin: const EdgeInsets.only(
                                right: 10,
                                top: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(e), fit: BoxFit.cover),
                              ),
                            );
                          }).toList()),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

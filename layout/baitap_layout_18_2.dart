import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Bài tập widget layout 2

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Home()),
        //backgroundColor: Color.fromARGB(255, 0, 45, 53), //color của widget Explore
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[200],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Find products easier here",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[200],
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(height: 50, width: 50, color: Colors.orange),
              ),
            ],
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 220,
              width: 500,
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: 500,
                    color: Color.fromARGB(255, 0, 105, 146),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.image,
                          size: 80,
                          color: Colors.grey[200],
                        ),
                        Text(
                          'Image here',
                          style: TextStyle(color: Colors.grey[200]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Lamp",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 220,
              width: 500,
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: 500,
                    color: Color.fromARGB(255, 0, 105, 146),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.image,
                          size: 80,
                          color: Colors.grey[200],
                        ),
                        Text(
                          'Image here',
                          style: TextStyle(color: Colors.grey[200]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Car",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 220,
              width: 500,
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: 500,
                    color: Color.fromARGB(255, 0, 105, 146),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.image,
                          size: 80,
                          color: Colors.grey[200],
                        ),
                        Text(
                          'Image here',
                          style: TextStyle(color: Colors.grey[200]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Plant",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back,",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "Samantha William",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      FontAwesomeIcons.cartPlus,
                      size: 30,
                      color: Colors.grey[600],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 16,
                        width: 16,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 50,
                  width: 320,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          FontAwesomeIcons.search,
                          size: 30,
                          color: Colors.grey[600],
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Searching item",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                  child: Icon(
                    FontAwesomeIcons.list,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 170,
              width: 500,
              color: Color.fromARGB(255, 0, 105, 146),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.image,
                    size: 80,
                    color: Colors.grey[200],
                  ),
                  Text('Image here', style: TextStyle(color: Colors.grey[200])),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(height: 10, width: 10, color: Colors.orange),
              ),
              SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 10,
                  width: 10,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 10,
                  width: 10,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 10,
                  width: 10,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Category(FontAwesomeIcons.music, "Music"),
              SizedBox(width: 20),
              Category(FontAwesomeIcons.gamepad, "Game"),
              SizedBox(width: 20),
              Category(FontAwesomeIcons.tshirt, "Clothes"),
              SizedBox(width: 20),
              Category(FontAwesomeIcons.laptop, "Laptop"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Category(FontAwesomeIcons.bed, "Bed"),
              SizedBox(width: 20),
              Category(FontAwesomeIcons.car, "Car"),
              SizedBox(width: 20),
              Category(FontAwesomeIcons.plane, "Plane"),
              SizedBox(width: 20),
              Category(FontAwesomeIcons.shoePrints, "Shoes"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Seller",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 20, color: Colors.yellow[800]),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BestSeller("Lamp"),
              BestSeller("Car"),
              BestSeller("Plant"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget Category(iconn, String name) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 80,
          width: 80,
          color: Colors.grey[200],
          child: Icon(iconn, size: 40, color: Color.fromARGB(255, 0, 105, 146)),
        ),
      ),
      SizedBox(height: 10),
      Text(name, style: TextStyle(color: Colors.black)),
    ],
  );
}

Widget BestSeller(String name) {
  return Container(
    height: 170,
    width: 120,
    color: Colors.grey[200],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 120,
            width: 120,
            color: Color.fromARGB(255, 0, 105, 146),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.image, size: 30, color: Colors.grey[200]),
                Text('Image here', style: TextStyle(color: Colors.grey[200])),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.solidStar,
                    size: 12,
                    color: Colors.yellow[800],
                  ),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    size: 12,
                    color: Colors.yellow[800],
                  ),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    size: 12,
                    color: Colors.yellow[800],
                  ),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    size: 12,
                    color: Colors.yellow[800],
                  ),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    size: 12,
                    color: Colors.yellow[800],
                  ),
                  SizedBox(width: 5),
                  Text("5.0", style: TextStyle(color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

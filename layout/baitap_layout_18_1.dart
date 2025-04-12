import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Bài tập widget layout 1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Start()),
        backgroundColor: Colors.grey[200],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 550, color: Colors.green[600]),
        SizedBox(height: 30),
        Container(
          width: 400,
          child: Text(
            "Complete your grocery need easily",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 50),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 60,
            width: 250,
            color: Colors.green[700],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.arrowRight,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text("Your Balance", style: TextStyle(fontSize: 20)),
                    Text(
                      "\$ 1,700.00",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green[600],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 250,
              width: 600,
              color: Colors.green[600],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 120, 100, 10),
                child: Text(
                  "Buy Orange 10Kg\nGet discount 25%",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "For you",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCard(
                "https://cdn-icons-png.flaticon.com/512/4899/4899184.png",
                "Fruit",
              ),
              buildCard(
                "https://cdn-icons-png.flaticon.com/512/10107/10107601.png",
                "Vegetable",
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCard(
                "https://emojiisland.com/cdn/shop/products/Donut_Emoji_large.png?v=1571606034",
                "Cookies",
              ),
              buildCard(
                "https://icons.iconarchive.com/icons/google/noto-emoji-food-drink/512/32380-cut-of-meat-icon.png",
                "Meat",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildCard(String image, String title) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      height: 195,
      width: 195,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 120, width: 120, child: Image.network(image)),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    ),
  );
}

class ListTitle extends StatelessWidget {
  const ListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(FontAwesomeIcons.arrowLeft, size: 30),
          SizedBox(height: 50),
          Container(
            height: 800,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildListTile("Orange", "In Stock 20", "\$ 50"),
                SizedBox(height: 20),
                buildListTile("Apple", "In Stock 10", "\$ 30"),
                SizedBox(height: 20),
                buildListTile("Banana", "In Stock 15", "\$ 20"),
                SizedBox(height: 20),
                buildListTile("Grapes", "In Stock 25", "\$ 40"),
                SizedBox(height: 20),
                buildListTile("Mango", "In Stock 5", "\$ 60"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildListTile(String product, String stock, String price) {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(height: 80, width: 80, color: Colors.green[600]),
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            stock,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      SizedBox(width: 150),
      Icon(FontAwesomeIcons.heart, size: 30),
    ],
  );
}

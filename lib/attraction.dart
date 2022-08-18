import 'package:flutter/material.dart';

class Attraction extends StatefulWidget {
  Attraction({Key? key}) : super(key: key);

  @override
  State<Attraction> createState() => _AttractionState();
}

class _AttractionState extends State<Attraction> {
  bool like = false;
  int count = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage('images/78809294.jpg')),
          Container(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Text("Oeschinen Lake Campground",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Row(
                  children: [
                    Text("Kandersteg"),
                    SizedBox(
                      width: 200,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            like = !like;
                            count = like ? count + 1 : count - 1;
                          });
                        },
                        icon: Icon(
                            like ? Icons.star : Icons.star_border_outlined)),
                    Text("$count",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     IconButton(
              //         onPressed: () {}, icon: Icon(Icons.star_border_outlined)),
              //     Text("4.0",
              //         style: TextStyle(fontSize: 20, color: Colors.black)),
              //   ],
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 70),
                    Icon(Icons.arrow_back_ios_new),
                    SizedBox(width: 70),
                    Icon(Icons.share),
                  ],
                ),
                Row(
                  children: [
                    Text("CALL"),
                    SizedBox(width: 50),
                    Text("ROUTE"),
                    SizedBox(width: 50),
                    Text("SHARE"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Text(
                "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          ),
        ],
      ),
    );
  }
}

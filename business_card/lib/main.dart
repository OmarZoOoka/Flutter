import 'package:flutter/material.dart';

void main() {
  runApp(const BuissinessCardApp());
}

class BuissinessCardApp extends StatelessWidget {
  const BuissinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 102,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 100,
              backgroundImage:
                  AssetImage("images/christmas-picture-7632475_960_720.jpg"),
            ),
          ),
          const Text(
            "Omar Albaz",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: 'Pacifico',
            ),
          ),
          const Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
                color: Colors.white24,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: Colors.white24,
            thickness: 1,
            indent: 50,
            endIndent: 50,
            height: 10,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: const ListTile(
              leading: Icon(
                Icons.link,
                size: 32,
                color: Color(0xff2b475e),
              ),
              title: Text(
                "fb.com/OmarAlbaz",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 65,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.phone,
                    size: 30,
                    color: Color(0xFF2B475E),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "(+20) 1000109946",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 65,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.mail,
                    size: 30,
                    color: Color(0xFF2B475E),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "omar123@gmail.com",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

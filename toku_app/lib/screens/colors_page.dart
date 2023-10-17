import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Item> colors = const [
    Item(
      image: "assets/images/colors/color_black.png",
      enName: "Black",
      jpName: "Burakku",
      sound: "sounds/colors/black.wav",
    ),
    Item(
      image: "assets/images/colors/color_brown.png",
      enName: "Brown",
      jpName: "Chairo",
      sound: "sounds/colors/brown.wav",
    ),
    Item(
      image: "assets/images/colors/color_dusty_yellow.png",
      enName: "Dusty Yellow",
      jpName: "Hokori ppoi kiiro",
      sound: "sounds/colors/dusty_yellow.wav",
    ),
    Item(
      image: "assets/images/colors/color_gray.png",
      enName: "Gray",
      jpName: "Gurē",
      sound: "sounds/colors/gray.wav",
    ),
    Item(
      image: "assets/images/colors/color_green.png",
      enName: "Green",
      jpName: "Midori",
      sound: "sounds/colors/green.wav",
    ),
    Item(
      image: "assets/images/colors/color_red.png",
      enName: "Red",
      jpName: "Aka",
      sound: "sounds/colors/red.wav",
    ),
    Item(
      image: "assets/images/colors/color_white.png",
      enName: "White",
      jpName: "Shiro",
      sound: "sounds/colors/white.wav",
    ),
    Item(
      image: "assets/images/colors/yellow.png",
      enName: "Yellow",
      jpName: "Kiiro",
      sound: "sounds/colors/yellow.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text("Colors"),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: colors[index],
            color: Color(0xff7D40A2),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}

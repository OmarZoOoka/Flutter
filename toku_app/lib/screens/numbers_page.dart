import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Item> numbers = const [
    Item(
      image: "assets/images/numbers/number_one.png",
      enName: "One",
      jpName: "Ichi",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_two.png",
      enName: "Two",
      jpName: "Ni",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_three.png",
      enName: "Three",
      jpName: "San",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_four.png",
      enName: "Four",
      jpName: "Shi",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_five.png",
      enName: "Five",
      jpName: "Go",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_six.png",
      enName: "Six",
      jpName: "Roku",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_seven.png",
      enName: "Seven",
      jpName: "Sebun",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_eight.png",
      enName: "Eight",
      jpName: "Hachi",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_nine.png",
      enName: "Nine",
      jpName: "Kyū",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    Item(
      image: "assets/images/numbers/number_ten.png",
      enName: "Ten",
      jpName: "Jū",
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text("Numbers"),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Color(0xffEF9235),
            itemType: 'numbers',
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toku_app/models/number.dart';
import 'package:toku_app/models/phrases.dart';

import '../components/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Item> Phrases = const [
    Item(
      enName: "Are you coming?",
      jpName: "Kimasu ka",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    Item(
      enName: "How are you feeling?",
      jpName: "Go kibun wa ikagadesu ka",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    Item(
      enName: "I love anime",
      jpName: "Watashi wa anime ga daisukidesu",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    Item(
      enName: "I love Programming",
      jpName: "Puroguramingu ga daisuki",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    Item(
      enName: "Programming is easy",
      jpName: "Puroguramingu wa kantan",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    Item(
      enName: "What is your name?",
      jpName: "Namae wa nandesu ka",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    Item(
      enName: "Where are you going?",
      jpName: "Doko ni iku no",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    Item(
      enName: "Yes I'm coming",
      jpName: "Hai, ikimasu",
      sound: "sounds/phrases/yes_im_coming.wav",
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
        itemCount: Phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            phrase: Phrases[index],
            color: Color(0xff46A5CB),
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}

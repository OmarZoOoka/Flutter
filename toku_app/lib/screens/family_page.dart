import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<Item> familyMembers = const [
    Item(
      image: "assets/images/family_members/family_grandfather.png",
      enName: "Grand Father",
      jpName: "Ojīsan",
      sound: "sounds/family_members/grand_father.wav",
    ),
    Item(
      image: "assets/images/family_members/family_grandmother.png",
      enName: "Grand Mother",
      jpName: "O bāchan",
      sound: "sounds/family_members/grand_mother.wav",
    ),
    Item(
      image: "assets/images/family_members/family_father.png",
      enName: "Father",
      jpName: "Chichi",
      sound: "sounds/family_members/father.wav",
    ),
    Item(
      image: "assets/images/family_members/family_mother.png",
      enName: "Mother",
      jpName: "Haha",
      sound: "sounds/family_members/mother.wav",
    ),
    Item(
      image: "assets/images/family_members/family_daughter.png",
      enName: "Daughter",
      jpName: "Musume",
      sound: "sounds/family_members/daughter.wav",
    ),
    Item(
      image: "assets/images/family_members/family_son.png",
      enName: "Son",
      jpName: "Musuko",
      sound: "sounds/family_members/son.wav",
    ),
    Item(
      image: "assets/images/family_members/family_older_brother.png",
      enName: "Older Brother",
      jpName: "Ani",
      sound: "sounds/family_members/older_brother.wav",
    ),
    Item(
      image: "assets/images/family_members/family_older_sister.png",
      enName: "Older Sister",
      jpName: "Ane",
      sound: "sounds/family_members/older_sister.wav",
    ),
    Item(
      image: "assets/images/family_members/family_younger_brother.png",
      enName: "Younger Brother",
      jpName: "Otōto",
      sound: "sounds/family_members/younger_brother.wav",
    ),
    Item(
      image: "assets/images/family_members/family_younger_sister.png",
      enName: "Younger Sister",
      jpName: "Imōto",
      sound: "sounds/family_members/younger_sister.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text("Family Members"),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: familyMembers[index],
            color: Color(0xff528032),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}

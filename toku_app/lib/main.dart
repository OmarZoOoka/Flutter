import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(Toku_app());
}

class Toku_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

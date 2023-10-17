import 'package:flutter/material.dart';
import 'package:project_chat/constants.dart';
import 'package:project_chat/models/message.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    required this.message,
    super.key,
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 18, top: 30, bottom: 30),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(32),
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
          ),
          color: kPrimaryColor,
        ),
        child: Text(
          message.message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ChatBubbleForSomeone extends StatelessWidget {
  const ChatBubbleForSomeone({
    required this.message,
    super.key,
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 18, top: 30, bottom: 30),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
          ),
          color: Color(0xff006389),
        ),
        child: Text(
          message.message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

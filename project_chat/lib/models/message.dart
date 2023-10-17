import 'package:project_chat/constants.dart';

class Message {
  final String message, id;

  Message(this.message, this.id);

  factory Message.fromJson(jsonData) {
    return Message(jsonData[kMessage], jsonData['id']);
  }
}

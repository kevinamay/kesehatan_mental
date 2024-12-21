import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String content;

  Message({required this.content});

  factory Message.fromFirestore(DocumentSnapshot doc) {
    return Message(content: doc['content']);
  }
}

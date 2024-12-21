import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/message_model.dart';

class ChatService {
  static final CollectionReference _chatCollection =
      FirebaseFirestore.instance.collection('chats');

  static void sendMessage(String content) {
    _chatCollection.add({
      'content': content,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  static Stream<List<Message>> getMessages() {
    return _chatCollection.orderBy('timestamp', descending: true).snapshots().map(
      (snapshot) => snapshot.docs.map((doc) => Message.fromFirestore(doc)).toList(),
    );
  }
}

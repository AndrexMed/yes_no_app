import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagesList = [
    Message(text: 'Hola', fromWho: FromWho.mine),
    Message(text: 'buenos dias', fromWho: FromWho.mine),
    Message(text: 'como estas', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
    // if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messagesList.add(newMessage);
    notifyListeners();
  }
}

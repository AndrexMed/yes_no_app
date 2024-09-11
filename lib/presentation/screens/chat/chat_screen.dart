import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/v2/D4E03AQFtzgSGEaS1uQ/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1696455089857?e=1731542400&v=beta&t=ASvBUDVI8jMGH1j8VgrnkQws2E8KpsNC_uw4BAYgr2A'),
          ),
        ),
        title: const Text("Mi amor ❤️"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  // const _ChatView({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messagesList.length,
              itemBuilder: (context, index) {
                // return (index % 2 == 0)
                //     ? const HerMessageBubble()
                //     : const MyMessageBubble();
                final message = chatProvider.messagesList[index];

                return (message.fromWho == FromWho.mine)
                    ? MyMessageBubble(message: message)
                    : HerMessageBubble(message: message);
              },
            )),
            //Caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}

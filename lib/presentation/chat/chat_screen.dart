import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Text('Indice: $index');
              },
            )),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'hello world',
              style: TextStyle(color: Color.fromARGB(255, 34, 29, 29)),
            ),
          ),
        ),
        const SizedBox(height: 5),

        //todo img
        _ImageBubble(),

        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size);
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://yesno.wtf/assets/yes/12-e4f57c8f172c51fdd983c2837349f853.gif',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
        ));
  }
}

import 'package:flutter/material.dart';


class TrailingTrayIcon extends StatelessWidget {
  const TrailingTrayIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .4,
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.mic_none)),
          IconButton(onPressed: () {}, icon: Icon(Icons.image_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_reaction_outlined)),
        ],
      ),
    );
  }
}

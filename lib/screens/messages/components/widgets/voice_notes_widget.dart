import 'package:flutter/material.dart';
import 'package:instagram_clone/models/notes.dart';

class VoiceNotesWidget extends StatelessWidget {
  const VoiceNotesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(voiceNotes.length, (index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * .28,
            child: Column(
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * .1,
                  backgroundImage: AssetImage(voiceNotes[index].profilePic),
                ),
                Text(voiceNotes[index].username),
              ],
            ),
          );
        }),
      ),
    );
  }
}

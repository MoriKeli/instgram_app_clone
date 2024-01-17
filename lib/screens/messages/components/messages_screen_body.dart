import 'package:flutter/material.dart';
import 'package:instagram_clone/common/search_input_field.dart';
import 'package:instagram_clone/screens/messages/components/all_messages.dart';
import 'package:instagram_clone/screens/messages/components/widgets/messages_and_requests_header_widget.dart';
import 'package:instagram_clone/screens/messages/components/widgets/voice_notes_widget.dart';

class MessagesScreenBody extends StatelessWidget {
  const MessagesScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          SearchInputField(),
          SizedBox(height: 8.0),
          VoiceNotesWidget(),
          SizedBox(height: 12.0),
          MessagesSectionAndRequestHeaderWidget(),
          SizedBox(height: 12.0),
          AllMessages(),
          
        ],
      ),
    ]);
  }
}

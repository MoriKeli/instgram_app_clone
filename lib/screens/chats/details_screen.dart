// this is the screen that is displayed when a user clicks "🛈 " icon in the chat screen

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/chats/components/widgets/details_screen/block_widget.dart';
import 'package:instagram_clone/screens/chats/components/widgets/details_screen/members_header_widget.dart';
import 'package:instagram_clone/screens/chats/components/widgets/details_screen/members_profile_widget.dart';
import 'package:instagram_clone/screens/chats/components/widgets/details_screen/mute_calls.dart';
import 'package:instagram_clone/screens/chats/components/widgets/details_screen/mute_messages_widget.dart';
import 'package:instagram_clone/screens/chats/components/widgets/details_screen/report_widget.dart';
import 'package:instagram_clone/screens/chats/components/widgets/details_screen/restrict_widget.dart';


class DetailsScreen extends StatefulWidget {
  static String routeName = '/details-screen';
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 24.0,
        title: Text('Details'),
      ),
      body: ListView(
        children: [
          MuteMessagesWidget(),   // option 1: mute messages
          MuteCallsWidget(),  // option 2: mute calls
          MembersHeaderWidget(),
          MembersProfileWidget(), // member profile info
          Divider(),
          RestrictWidget(),   // option 3: add restrictions
          ReportWidget(),   // option 4: report profile
          BlockWidget(),    // option 5: block this user
        ],
      ),
    );
  }
}

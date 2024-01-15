import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/profile/components/widgets/bottom_sheet_option_widget.dart';


// bottom sheet to show options for customizing account or perform additional tasks
class SettingsBottomSheet extends StatelessWidget {
  const SettingsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) => SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              IconButton(
                onPressed: () => Navigator.pop,
                icon: Icon(Icons.close), // button to close the bottom sheet
              ),
            ]),
            BottomSheetOptions(
              optionIcon: Icons.settings,
              option: 'Settings',
            ),
            BottomSheetOptions(
              optionIcon: Icons.data_saver_on,
              option: 'Data saver',
            ),
            BottomSheetOptions(
              optionIcon: Icons.history,
              option: 'Archive',
            ),
            BottomSheetOptions(
              optionIcon: Icons.bookmark_border,
              option: 'Saved',
            ),
            BottomSheetOptions(
              optionIcon: Icons.group_outlined,
              option: 'Supervision',
            ),
            BottomSheetOptions(
              optionIcon: Icons.format_list_bulleted,
              option: 'Close friends',
            ),
            BottomSheetOptions(
              optionIcon: Icons.person_add_outlined,
              option: 'Discover people',
            ),
            BottomSheetOptions(
              optionIcon: Icons.share_outlined,
              option: 'Invite friends by ...',
            ),
            BottomSheetOptions(
              optionIcon: Icons.report_problem_outlined,
              option: 'Report a problem',
            ),
          ],
        ),
      ),
    );
  }
}

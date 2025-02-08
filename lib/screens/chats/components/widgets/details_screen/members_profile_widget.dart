import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class MembersProfileWidget extends StatelessWidget {
  const MembersProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24.0,
        backgroundImage: AssetImage('assets/images/dps/brenda-jones.jpg'),
      ),
      title: Text('iambrendajones', style: TextStyle(fontSize: 14.0)),
      subtitle: Text('iambrendajones', style: TextStyle(color: kTextSecondaryColor, fontSize: 13.0)),
      trailing: SizedBox(
        height: 32.0,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(kSecondaryColor),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0))),
          ),
          child: Text(
            'Following',
            style: TextStyle(color: kTextColor),
          ),
        ),
      ),
    );
  }
}

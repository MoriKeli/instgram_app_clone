import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class RecipientDetailsSectionWidget extends StatelessWidget {
  const RecipientDetailsSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('images/dps/brenda-jones.jpg'),
          ),
          SizedBox(height: 8.0),
          Text(
            'iambrendajones',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text.rich(
            TextSpan(
              text: 'iambrendajones',
              children: [
                TextSpan(text: ' · '),
                TextSpan(text: 'Instagram'),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          SizedBox(
            height: 32.0,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(kSecondaryColor),
                padding: WidgetStatePropertyAll(EdgeInsets.all(8.0)),
                shape: WidgetStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
              ),
              onPressed: () {},
              child: Text(
                'View profile',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

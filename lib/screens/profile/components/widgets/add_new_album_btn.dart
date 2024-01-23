import 'package:flutter/material.dart';


class AddNewAlbumBtn extends StatelessWidget {
  const AddNewAlbumBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.5),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, size: 32.0),
          ),
        ),
        SizedBox(height: 8.0),
        Text('New'),
      ],
    );
  }
}

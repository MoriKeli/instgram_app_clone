import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> profileImages = [
    "images/dps/boy-1.jpg",
    "images/dps/boy-2.jpg",
    "images/dps/boy-3.jpg",
    "images/dps/boy-4.jpg",
    "images/dps/girl-1.jpg",
    "images/dps/girl-2.jpg",
    "images/dps/girl-3.jpg",
  ];

  List<String> user_posts = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/13.jpg",
    "images/gallery-8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 10.0,
        // leading: Icon(Icons.camera_alt_outlined, color: Colors.black, size: 30.0),
        title: Image(
          image: AssetImage("images/logo.png"),
          height: 38.0,
          // fit: BoxFit.contain,
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black, size: 30.0),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.black, size: 30.0),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  Instagram stories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    7,
                    (index) => Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 37.0,
                                backgroundImage:
                                    AssetImage("images/gradient.jpg"),
                                child: CircleAvatar(
                                  radius: 34.0,
                                  backgroundImage:
                                      AssetImage(profileImages[index]),
                                ),
                              ),
                              Text("Profile Name",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black))
                            ],
                          ),
                        )),
              ),
            ),

            Divider(thickness: 0.5, color: Colors.black),
            Column(
              children: List.generate(
                2,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //  Header
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("images/gradient.jpg"),
                            child: CircleAvatar(
                              radius: 23.0,
                              backgroundImage: AssetImage(profileImages[index]),
                            ),
                          ),
                        ),
                        Text("Profile name"),
                        Spacer(),
                        IconButton(
                            icon: Icon(Icons.more_vert), onPressed: () {}),
                      ],
                    ),
                    //  images uploaded by the user
                    Image(image: AssetImage(user_posts[index])),
                    //  Footer for each posts card
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.favorite_border, size: 32.0),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.chat_bubble_outline_outlined, size: 32.0),
                            onPressed: () {}),
                        IconButton(icon: Icon(Icons.send, size: 32.0), onPressed: () {}),
                        Spacer(),
                        IconButton(
                            icon: Icon(Icons.bookmark_border, size: 32.0),
                            onPressed: () {}),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: "Liked by "),
                                  TextSpan(
                                      text: "test_user",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                  ),
                                  TextSpan(text: "and "),
                                  TextSpan(text: "others", style: TextStyle(fontWeight: FontWeight.bold)),

                                ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 100.0,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined),
              iconSize: 40.0,
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 40.0,
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.add_box_outlined),
              iconSize: 40.0,
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.ondemand_video_outlined),
              iconSize: 40.0,
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.person_outline_rounded),
              iconSize: 40.0,
              onPressed: () {},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

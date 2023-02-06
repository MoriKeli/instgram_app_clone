import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> profileImages = [
    "assets/dps/boy-1.jpg",
    "assets/dps/boy-2.jpg",
    "assets/dps/boy-3.jpg",
    "assets/dps/boy-4.jpg",
    "assets/dps/girl-1.jpg",
    "assets/dps/girl-2.jpg",
    "assets/dps/girl-3.jpg",
  ];

  List<String> user_posts = [
    "assets/1.jpg",
    // "assets/2.jpg",
    // "assets/3.jpg",
    // "assets/5.jpg",
    // "assets/6.jpg",
    // "assets/13.jpg",
    // "assets/gallery-8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 10.0,
        // leading: Icon(Icons.camera_alt_outlined, color: Colors.black, size: 30.0),
        title: Image(
          image: AssetImage("assets/logo.png"),
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
                                    AssetImage("assets/gradient.jpg"),
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
                1,
                (index) => Column(
                  children: [
                    //  Header
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage("assets/gradient.jpg"),
                            child: CircleAvatar(
                              radius: 23.0,
                              backgroundImage: AssetImage(profileImages[index]),
                            ),
                          ),
                        ),
                        Text("Profile name"),
                        Spacer(),
                        IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {}),
                      ],
                    ),
                  //  images uploaded by the user
                    Image.asset(user_posts[index]),
                    // Image(image: AssetImage(user_posts[index]),),
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

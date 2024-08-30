import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static String routeName = '/homepage';
  const Homepage({super.key});

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

  List<String> userPosts = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/13.jpg",
    "images/gallery-8.jpg",
  ];

  //function to refresh page
  Future<void> refreshPage() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.camera_alt_outlined, color: Colors.black, size: 30.0),
        title: const Image(
          image: AssetImage("images/logo.png"),
          height: 38.0,
          // fit: BoxFit.contain,
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black, size: 30.0),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.black, size: 30.0),
            onPressed: () {},
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: refreshPage ,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //  Instagram stories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      7,
                      (index) => Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 37.0,
                                  backgroundImage:
                                      const AssetImage("images/gradient.jpg"),
                                  child: CircleAvatar(
                                    radius: 34.0,
                                    backgroundImage:
                                        AssetImage(profileImages[index]),
                                  ),
                                ),
                                const Text("Profile Name",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.black))
                              ],
                            ),
                          )),
                ),
              ),

              const Divider(thickness: 0.5, color: Colors.black),
              Column(
                children: List.generate(
                  7,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  Header
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 25.0,
                              backgroundImage: const AssetImage("images/gradient.jpg"),
                              child: CircleAvatar(
                                radius: 23.0,
                                backgroundImage: AssetImage(profileImages[index]),
                              ),
                            ),
                          ),
                          const Text("Profile name"),
                          const Spacer(),
                          IconButton(
                              icon: const Icon(Icons.more_vert), onPressed: () {}),
                        ],
                      ),
                      //  images uploaded by the user
                      Image(image: AssetImage(userPosts[index])),
                      //  Footer for each posts card
                      Row(
                        children: [
                          IconButton(
                              icon: const Icon(Icons.favorite_border, size: 32.0),
                              onPressed: () {}),
                          IconButton(
                              icon: const Icon(Icons.chat_bubble_outline_outlined, size: 32.0),
                              onPressed: () {}),
                          IconButton(icon: const Icon(Icons.send, size: 32.0), onPressed: () {}),
                          const Spacer(),
                          IconButton(
                              icon: const Icon(Icons.bookmark_border, size: 32.0),
                              onPressed: () {}),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            RichText(
                              text: const TextSpan(
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
                                    TextSpan(text: "4057 others", style: TextStyle(fontWeight: FontWeight.bold)),

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
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 100.0,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.home_outlined),
              iconSize: 40.0,
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.search),
              iconSize: 40.0,
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              iconSize: 40.0,
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.ondemand_video_outlined),
              iconSize: 40.0,
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.person_outline_rounded),
              iconSize: 40.0,
              onPressed: () {},
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

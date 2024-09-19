import 'package:flutter/material.dart';


class HomepageBody extends StatelessWidget {
  const HomepageBody({
    super.key,
    required this.profileImages,
    required this.userPosts,
  });

  final List<String> profileImages;
  final List<String> userPosts;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
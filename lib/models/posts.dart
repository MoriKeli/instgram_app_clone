class Posts {
  final String username;
  final String profilePic;
  final String imageFile;
  final String description;
  final String dateStamp;
  final int totalLikes;
  final int totalComments;

  Posts({
    required this.username,
    required this.profilePic,
    required this.imageFile,
    required this.totalLikes,
    required this.totalComments,
    required this.dateStamp,
    this.description = '',
  });
}

List<Posts> newsFeed = [
  Posts(
    username: "sarah.johnson",
    profilePic: "assets/images/dps/sarah-johnson.jpg",
    imageFile: "assets/images/posts/hangout.jpg",
    totalLikes: 200,
    totalComments: 10,
    dateStamp: "10h",
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.'
  ),
  Posts(
    username: "iambrendajones",
    profilePic: "assets/images/dps/brenda-jones.jpg",
    imageFile: "assets/images/posts/crusade.jpg",
    totalLikes: 5000,
    totalComments: 200,
    dateStamp: "14h",
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'
  ),
  Posts(
    username: "coder.girl",
    profilePic: "assets/images/dps/coder-girl.jpg",
    imageFile: "assets/images/posts/event.jpg",
    totalLikes: 20,
    totalComments: 5,
    dateStamp: "16h",
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae.'
  ),
  Posts(
    username: "kelvin.anderson",
    profilePic: "assets/images/dps/kelvin-anderson.jpg",
    imageFile: "assets/images/posts/kelvin-anderson.jpg",
    totalLikes: 1255,
    totalComments: 30,
    dateStamp: "20h",
  ),
  Posts(
    username: "testuser",
    profilePic: "assets/images/dps/testuser.jpg",
    imageFile: "assets/images/posts/just-chilling.jpg",
    totalLikes: 120,
    totalComments: 0,
    dateStamp: "1d",
    description: 'Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.'
  ),
  Posts(
    username: "van_guard",
    profilePic: "assets/images/dps/vanguard.jpg",
    imageFile: "assets/images/posts/family-hangout.jpg",
    totalLikes: 20000,
    totalComments: 10,
    dateStamp: "4d",
  ),
  Posts(
    username: "yule.msee",
    profilePic: "assets/images/dps/yule-msee.jpg",
    imageFile: "assets/images/posts/male-developer.jpg",
    totalLikes: 200,
    totalComments: 10,
    dateStamp: "1w",
  ),
];

class InstagramStories {
  final String profilePic;
  final String username;
  final bool isViewed;

  InstagramStories({
    required this.profilePic,
    required this.username,
    this.isViewed = false,
  });
}

List<InstagramStories> stories = [
  InstagramStories(
    profilePic: "assets/images/dps/testuser.jpg",
    username: 'Add story',
    isViewed: true,
  ),
  InstagramStories(
    profilePic: "assets/images/dps/sarah-johnson.jpg",
    username: 'sarah.johnson',
    isViewed: true,
  ),
  InstagramStories(
    profilePic: "assets/images/dps/brenda-jones.jpg",
    username: 'iambrendajones',
    isViewed: true,
  ),
  InstagramStories(
    profilePic: "assets/images/dps/coder-girl.jpg",
    username: 'coder.girl',
  ),
  InstagramStories(
    profilePic: "assets/images/dps/kelvin-anderson.jpg",
    username: 'kelvin.anderson',
  ),
  InstagramStories(
    profilePic: "assets/images/dps/vanguard.jpg",
    username: 'van_guard',
    isViewed: true,
  ),
  InstagramStories(
    profilePic: "assets/images/dps/yule-msee.jpg",
    username: 'yule.msee',
  ),
];

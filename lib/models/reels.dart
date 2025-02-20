class Reels {
  final String videoFilePath, profilePic, username, videoCaption, reelsMusic;

  Reels({
    required this.videoFilePath,
    required this.profilePic,
    required this.username,
    this.videoCaption = '',
    this.reelsMusic = '',
  });
}


List<Reels> reels = [
  Reels(
    videoFilePath: 'assets/videos/github-unwrapped.mp4',
    profilePic: 'assets/images/dps/coder-girl.jpg',
    username: 'coder.girl',
    videoCaption: '#GitHub Unwrapped 2023',
    reelsMusic: 'GitHub music',
  ),
  Reels(
    videoFilePath: 'assets/videos/reels1.mp4',
    profilePic: 'assets/images/dps/brenda-jones.jpg',
    username: 'iambrendajones',
    videoCaption: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae.',
    reelsMusic: 'iambrenda',
  ),
  Reels(
    videoFilePath: 'assets/videos/prank-gone-wrong.mp4',
    profilePic: 'assets/images/dps/yule-msee.jpg',
    username: 'yule.msee',
    videoCaption: 'Know your victim and know yourself 🤣🤣',
  ),
  Reels(
    videoFilePath: 'assets/videos/reels2.mp4',
    profilePic: 'assets/images/dps/vanguard.jpg',
    username: 'van_guard',
    videoCaption: 'We must stay focused brothers 😎😂',
  ),
  Reels(
    videoFilePath: 'assets/videos/reels3.mp4',
    profilePic: 'assets/images/dps/kelvin-anderson.jpg',
    username: 'kelvin.anderson',
    videoCaption: 'Give your life to Jesus Christ 📖✝️',
  ),
  Reels(
    videoFilePath: 'assets/videos/fast-internet.mp4',
    profilePic: 'assets/images/dps/coder-girl.jpg',
    username: 'coder.girl',
    videoCaption: 'We really need the fastest internet!',
  ),
  Reels(
    videoFilePath: 'assets/videos/reels7.mp4',
    profilePic: 'assets/images/dps/sarah-johnson.jpg',
    username: 'sarah.johnson',
    videoCaption: "The best advice I've ever heard about handling pain."
  ),
  Reels(
    videoFilePath: 'assets/videos/reels5.mp4',
    profilePic: 'assets/images/dps/testuser.jpg',
    username: 'testuser',
    videoCaption: "Dude saved his life with the 'virgin' line 🤣🤣💀",
  ),
  // Reels(
  //   videoFilePath: 'assets/videos/reels4.mp4',
  //   profilePic: 'assets/images/dps/yule-msee.jpg',
  //   username: 'yule.msee',
  //   videoCaption: "That intern that doesn't want to see you rest! 😂😂😒",
  //   reelsMusic: 'the boys soundtrack',
  // ),
  
  // Reels(
  //   videoFilePath: 'assets/videos/the-boys.mp4',
  //   profilePic: 'assets/images/dps/testuser.jpg',
  //   username: 'testuser',
  //   videoCaption: 'The boys! 😎',
  //   reelsMusic: 'the boys soundtrack',
  // ),
  // Reels(
  //   videoFilePath: 'assets/videos/reels6.mp4',
  //   profilePic: 'assets/images/dps/vanguard.jpg',
  //   username: 'van_guard',
  //   videoCaption: 'Just win!',
  //   reelsMusic: 'vanguard music',
  // ),
  // Reels(
  //   videoFilePath: 'assets/videos/homeless.mp4',
  //   profilePic: 'assets/images/dps/brenda-jones.jpg',
  //   username: 'iambrendajones',
  //   videoCaption: 'Bro became homeless that night 🤣🤣',
  //   reelsMusic: 'All my friends are toxic!',
  // ),
];

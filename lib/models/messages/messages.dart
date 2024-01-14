class Messages {
  final String profilePic;
  final String username;
  final String message;
  final String timeStamp;
  final bool isRead;

  Messages({
    required this.profilePic,
    required this.username,
    required this.message,
    required this.timeStamp,
    this.isRead = false,
  });
}

List<Messages> inboxMessages = [
  Messages(
    profilePic: 'assets/images/dps/brenda-jones.jpg',
    username: 'iambrendajones',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '2h',
    isRead: true,
  ),
  Messages(
    profilePic: 'assets/images/dps/coder-girl.jpg',
    username: 'coder.girl',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '8h',
  ),
  Messages(
    profilePic: 'assets/images/dps/sarah-johnson.jpg',
    username: 'sarah.johnson',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '12h',
  ),
  Messages(
    profilePic: 'assets/images/dps/yule-msee.jpg',
    username: 'yule.msee',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '1d',
    isRead: true,
  ),
  Messages(
    profilePic: 'assets/images/default.png',
    username: 'Instagram User',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '1d'
  ),
  Messages(
    profilePic: 'assets/images/dps/vanguard.jpg',
    username: 'van_guard',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '2d',
    isRead: true,
  ),
  Messages(
    profilePic: 'assets/images/dps/kelvin-anderson.jpg',
    username: 'kelvin.anderson',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '14d',
    isRead: true,
  ),
  Messages(
    profilePic: 'assets/images/default.png',
    username: 'Instagram User',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '28d'
  ),
  Messages(
    profilePic: 'assets/images/default.png',
    username: 'Instagram User',
    message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
    timeStamp: '32d'
  ),
];

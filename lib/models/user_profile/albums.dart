class AlbumPhotos {
  final String albumName;
  final String coverPhoto;
  final List<String> images;
  final String dateStamp;

  AlbumPhotos({
    required this.albumName,
    required this.coverPhoto,
    required this.images,
    required this.dateStamp,
  });
}

List<AlbumPhotos> userAlbumPhotos = [
  AlbumPhotos(
    albumName: 'Music 🔊',
    coverPhoto:  'assets/images/posts/img1.jpeg',
    images: [
      "assets/images/posts/img1.jpeg",
      "assets/images/posts/img2.jpeg",
      "assets/images/posts/img3.jpeg",
      "assets/images/posts/img4.jpeg",
    ],
    dateStamp: '1h',
  ),
  AlbumPhotos(
    albumName: 'Gaming',
    coverPhoto:  'assets/images/posts/img5.jpeg',
    images: [
      "assets/images/posts/img5.jpeg",
      "assets/images/posts/img6.jpeg",
      "assets/images/posts/img7.jpeg",
      "assets/images/posts/img8.jpeg",
    ],
    dateStamp: '2d',
  ),
  AlbumPhotos(
    albumName: '...',
    coverPhoto:  'assets/images/posts/img9.jpeg',
    images: [
      "assets/images/posts/img9.jpeg",
      "assets/images/posts/img10.jpeg",
      "assets/images/posts/img11.jpeg",
      "assets/images/posts/img12.jpeg",
    ],
    dateStamp: '3w',
  ),
  AlbumPhotos(
    albumName: '+254 🇰🇪',
    coverPhoto:  'assets/images/posts/img13.jpeg',
    images: [
      "assets/images/posts/img13.jpeg",
      "assets/images/posts/img14.jpeg",
      "assets/images/posts/img15.jpeg",
      "assets/images/posts/img16.jpeg",
    ],
    dateStamp: '14w',
  ),
  AlbumPhotos(
    albumName: 'travel',
    coverPhoto:  'assets/images/posts/img17.jpeg',
    images: [
      "assets/images/posts/img17.jpeg",
      "assets/images/posts/img18.jpeg",
      "assets/images/posts/img19.jpeg",
      "assets/images/posts/img20.jpeg",
    ],
    dateStamp: '42w',
  ),

];

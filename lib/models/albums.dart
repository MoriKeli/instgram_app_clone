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
    coverPhoto:  'images/posts/img1.jpeg',
    images: [
      "images/posts/img1.jpeg",
      "images/posts/img2.jpeg",
      "images/posts/img3.jpeg",
      "images/posts/img4.jpeg",
    ],
    dateStamp: '1h',
  ),
  AlbumPhotos(
    albumName: 'Gaming',
    coverPhoto:  'images/posts/img5.jpeg',
    images: [
      "images/posts/img5.jpeg",
      "images/posts/img6.jpeg",
      "images/posts/img7.jpeg",
      "images/posts/img8.jpeg",
    ],
    dateStamp: '2d',
  ),
  AlbumPhotos(
    albumName: '...',
    coverPhoto:  'images/posts/img9.jpeg',
    images: [
      "images/posts/img9.jpeg",
      "images/posts/img10.jpeg",
      "images/posts/img11.jpeg",
      "images/posts/img12.jpeg",
    ],
    dateStamp: '3w',
  ),
  AlbumPhotos(
    albumName: '+254 🇰🇪',
    coverPhoto:  'images/posts/img13.jpeg',
    images: [
      "images/posts/img13.jpeg",
      "images/posts/img14.jpeg",
      "images/posts/img15.jpeg",
      "images/posts/img16.jpeg",
    ],
    dateStamp: '14w',
  ),
  AlbumPhotos(
    albumName: 'travel',
    coverPhoto:  'images/posts/img17.jpeg',
    images: [
      "images/posts/img17.jpeg",
      "images/posts/img18.jpeg",
      "images/posts/img19.jpeg",
      "images/posts/img20.jpeg",
    ],
    dateStamp: '42w',
  ),

];

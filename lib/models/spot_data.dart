class PhotoSpot {
  final String name;
  final String imagePath;
  final String description;

  PhotoSpot(this.name, this.imagePath, this.description);
}

List<PhotoSpot> photoSpotsData = [
  PhotoSpot('Pesisir Kidul', 'images/spot1.jpg',
      'Spot Foto Bernuansa Sunset'),
  PhotoSpot('Pesisir kulon', 'images/spot2.jpg',
      'Spot Foto Bernuansa Sunrise'),
  PhotoSpot('Cafetaria', 'images/spot3.jpg',
      'Pemandangan Indah Didekat Cafetaria'),
  PhotoSpot('Gunung Megah', 'images/spot1.jpg',
      'Pemandangan megah dari puncak gunung.'),
  PhotoSpot('Pantai Indah', 'images/spot1.jpg',
      'Pantai eksotis dengan pasir putih yang indah.'),
  PhotoSpot('Hutan Hijau', 'images/spot2.jpg',
      'Hutan yang sejuk dengan pepohonan hijau dan segar.'),
  // Tambahkan lebih banyak tempat foto sesuai kebutuhan
];

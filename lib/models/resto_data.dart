class Restaurant {
  final String name;
  final String cuisine;
  final double rating;
  final String imagePath;

  Restaurant({
    required this.name,
    required this.cuisine,
    required this.rating,
    required this.imagePath,
  });
}

// Fungsi untuk mendapatkan data restoran
List<Restaurant> getRestaurants() {
  return [
    Restaurant(
      name: 'Warung Makan Bahagia',
      cuisine: 'Masakan Nusantara',
      rating: 4.5,
      imagePath: 'images/resto1.jpg',
    ),
    Restaurant(
      name: 'Restoran Abah Jamal',
      cuisine: 'Masakan Jepang',
      rating: 4.7,
      imagePath: 'images/resto2.jpg',
    ),
    Restaurant(
      name: 'Rumah Makan Kang Iwan',
      cuisine: 'Masakan Jepang',
      rating: 4.7,
      imagePath: 'images/resto3.jpg',
    ),
    Restaurant(
      name: 'Restoran Bintang Sobo',
      cuisine: 'Masakan Jepang',
      rating: 4.7,
      imagePath: 'images/resto1.jpg',
    ),
    Restaurant(
      name: 'Warung Kakang Reka',
      cuisine: 'Masakan Nusantara',
      rating: 4.5,
      imagePath: 'images/resto1.jpg',
    ),
    // Tambahkan lebih banyak restoran sesuai kebutuhan
  ];
}

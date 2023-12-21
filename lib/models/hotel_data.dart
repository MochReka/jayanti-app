class Hotel {
  final String name;
  final String description;
  final String imagePath;
  final double rating;
  final String location;
  final double price;

  Hotel({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.rating,
    required this.location,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    name: 'Hotel Bintang Sobo',
    description:
        'Deskripsi Hotel A. Fasilitas lengkap dengan pemandangan indah.',
    imagePath: 'images/hotel1.jpg',
    rating: 4.5,
    location: 'Kota A',
    price: 150.0,
  ),
  Hotel(
    name: 'Hotel Jaya Mukti',
    description:
        'Deskripsi Hotel B. Pengalaman menginap yang nyaman dan mewah.',
    imagePath: 'images/hotel1.jpg',
    rating: 4.0,
    location: 'Kota B',
    price: 120.0,
  ),
  Hotel(
    name: 'Hotel Prima',
    description:
        'Deskripsi Hotel B. Pengalaman menginap yang nyaman dan mewah.',
    imagePath: 'images/hotel1.jpg',
    rating: 4.0,
    location: 'Kota B',
    price: 120.0,
  ),
  Hotel(
    name: 'Hotel Dashboard',
    description:
        'Deskripsi Hotel B. Pengalaman menginap yang nyaman dan mewah.',
    imagePath: 'images/hotel1.jpg',
    rating: 4.0,
    location: 'Kota B',
    price: 120.0,
  ),
  // Tambahkan hotel lainnya sesuai kebutuhan
];

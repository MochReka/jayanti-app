import 'package:flutter/material.dart';
import 'ticket_page.dart';
import 'location_page.dart';
import 'photo_spots_page.dart';
import 'restaurants_page.dart';
import 'hotel_page.dart';
import 'drawer_widget.dart';
import 'homebutton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    TicketPage(),
    LocationPage(),
    PhotoSpotsPage(),
    RestaurantsPage(),
    HotelPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Utama',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerWidget(),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/hal1.jpeg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        color: Colors.white,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    HomeButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TicketPage()),
                        );
                      },
                      color: Colors.blue,
                      text: 'Tiket',
                      imagePath: 'images/ticket.png',
                    ),
                    SizedBox(width: 20),
                    HomeButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LocationPage()),
                        );
                      },
                      color: Colors.blue,
                      text: 'Lokasi',
                      imagePath: 'images/location.png',
                    ),
                    SizedBox(width: 20),
                    HomeButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhotoSpotsPage()),
                        );
                      },
                      color: Colors.blue,
                      text: 'Spot Foto',
                      imagePath: 'images/camera.png',
                    ),
                    SizedBox(width: 20),
                    HomeButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantsPage()),
                        );
                      },
                      color: Colors.blue,
                      text: 'Restoran',
                      imagePath: 'images/restaurant.png',
                    ),
                    SizedBox(width: 20),
                    HomeButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HotelPage()),
                        );
                      },
                      color: Colors.blue,
                      text: 'Hotel',
                      imagePath: 'images/hotel.png',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      RestaurantCard(
                        name: 'Hotel Mang Lili',
                        cuisine: 'Penginapan',
                        rating: 4.5,
                        imagePath: 'images/hotel1.jpg',
                      ),
                      SizedBox(height: 16),
                      RestaurantCard(
                        name: 'Sushi Sensation',
                        cuisine: 'restoran',
                        rating: 4.7,
                        imagePath: 'images/resto1.jpg',
                      ),
                      SizedBox(height: 16),
                      RestaurantCard(
                        name: 'Love',
                        cuisine: 'Spot Foto',
                        rating: 4.7,
                        imagePath: 'images/spot1.jpg',
                      ),
                      SizedBox(height: 16),
                      RestaurantCard(
                        name: 'Sushi Sensation',
                        cuisine: 'Masakan Jepang',
                        rating: 4.7,
                        imagePath: 'images/gambar1.jpg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        elevation: 4, // Tambahkan elevasi untuk menampilkan garis tepi putih
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: 'Tiket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Lokasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Spot Foto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Restoran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Hotel',
          ),
        ],
      ),
    );
  }
}
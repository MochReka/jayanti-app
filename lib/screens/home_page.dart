import 'package:flutter/material.dart';
import 'ticket_page.dart';
import 'location_page.dart';
import 'photo_spots_page.dart';
import 'restaurants_page.dart';
import 'hotel_page.dart';
import 'drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Utama',
          style:
              TextStyle(color: Colors.white), // Ubah warna teks menjadi putih
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerWidget(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/hal1.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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
                  imagePath: 'assets/images/ticket.png',
                ),
                SizedBox(width: 20),
                HomeButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocationPage()),
                    );
                  },
                  color: Colors.blue,
                  text: 'Lokasi',
                  imagePath: 'assets/images/location.png',
                ),
                SizedBox(width: 20),
                HomeButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhotoSpotsPage()),
                    );
                  },
                  color: Colors.blue,
                  text: 'Spot Foto',
                  imagePath: 'assets/images/camera.png',
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
                  imagePath: 'assets/images/restaurant.png',
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
                  imagePath: 'assets/images/hotel.png',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Tiket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Lokasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
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

class HomeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String text;
  final String imagePath;

  HomeButton({
    required this.onPressed,
    required this.color,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

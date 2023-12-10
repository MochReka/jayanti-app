import 'package:flutter/material.dart';
import 'ticket_page.dart';
import 'location_page.dart';
import 'photo_spots_page.dart';
import 'restaurants_page.dart';
import 'hotel_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.transparent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
      ),
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
                      MaterialPageRoute(builder: (context) => RestaurantsPage()),
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

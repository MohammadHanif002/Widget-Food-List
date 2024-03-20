import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Menu'),
          centerTitle: true,
        ),
        body: MenuList(),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildMenuItem('Rendang Daging', 'Harga : Rp 22.000', 'Deskripsi Menu 1',
            'assets/images/gambar_menu_1.jpg', 4), // Change the number of stars
        buildMenuItem(
            'Ayam Kremes',
            'Harga : Rp 16.000',
            'Deskripsi Menu 2',
            'assets/images/gambar_menu_2.jpeg',
            3), // Change the number of stars
        buildMenuItem('Ayam Bakar', 'Harga :Rp 18.000', 'Deskripsi Menu 3',
            'assets/images/gambar_menu_3.jpg', 5), // Change the number of stars
        // Add more menu items as needed
      ],
    );
  }

  Widget buildMenuItem(String name, String price, String description,
      String imagePath, int starCount) {
    // Add starCount parameter
    return Container(
      padding: EdgeInsets.all(45.0),
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(25.0), // Adjust border radius
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0), // Adjust border radius
            child: Image.asset(
              imagePath,
              width: 95,
              height: 95,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(price),
                Text(description),
                Row(
                  children: List.generate(
                      starCount,
                      (index) => Icon(Icons.star,
                          color: Colors
                              .yellow)), // Generate stars based on starCount
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

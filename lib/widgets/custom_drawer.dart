import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int) onItemTapped;

  CustomDrawer({required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Section de profil dans le Drawer
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/profile.jpg"), // Ajoutez votre image de profil
                ),
                SizedBox(height: 10),
                Text(
                  'John Doe',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'View Profile',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),

          // Navigation vers les différentes pages
          ListTile(
            title: Text('Page 1'),
            onTap: () => onItemTapped(0),
          ),
          ListTile(
            title: Text('Page 2'),
            onTap: () => onItemTapped(1),
          ),
          ListTile(
            title: Text('Contact'),
            onTap: () => onItemTapped(2),
          ),
          ListTile(
            title: Text('Page 4'),
            onTap: () => onItemTapped(3),
          ),
          ListTile(
            title: Text('Page 5'),
            onTap: () => onItemTapped(4),
          ),
        ],
      ),
    );
  }
}

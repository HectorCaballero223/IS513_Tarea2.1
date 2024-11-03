import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/memoji_example.png'),
              ),
              SizedBox(height: 16),
              Text(
                'Coffeestories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'mark.brock@icloud.com',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Edit profile',
                  style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                title: Text(
                  'Inventories',
                  style: TextStyle(color: const Color.fromARGB(255, 103, 103, 103)),
                  ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                ),
              ),
              ListTile(
                leading: Icon(Icons.store),
                title: Text('My stores'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.support_agent),
                title: Text('Support'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
              Divider(),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Preferences',
                  style: TextStyle(color: const Color.fromARGB(255, 103, 103, 103)),
                  ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                ),
              ),
              SwitchListTile(
                title: Text('Push notifications'),
                secondary: Icon(Icons.notifications),
                value: true,
                onChanged: (bool value) {},
              ),
              SwitchListTile(
                title: Text('Face ID'),
                secondary: Icon(Icons.face),
                value: true,
                onChanged: (bool value) {},
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('PIN Code'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text('Logout', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

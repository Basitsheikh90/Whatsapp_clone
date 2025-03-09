import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls_Screen.dart';
import 'package:whatsapp_clone/chat_Screen.dart';
import 'package:whatsapp_clone/status_Screen.dart';

class WhatsAppHomeScreen extends StatefulWidget {
  const WhatsAppHomeScreen({super.key});

  @override
  _WhatsAppHomeScreenState createState() => _WhatsAppHomeScreenState();
}

class _WhatsAppHomeScreenState extends State<WhatsAppHomeScreen> {
  int _selectedIndex = 0; // Default to the first screen (Chats)

  // List of widgets for different screens
  List<Widget> _widgetOptions = <Widget>[
    ChatScreen(), // Screen for Chats
    StatusScreen(), // Screen for Status
    CallsScreen(), // Screen for Calls
  ];

  // Function to update selected index when an item is tapped
  void onitemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      // Show the selected screen based on the index
      body: _widgetOptions[
          _selectedIndex], // This will display the correct screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Track the currently selected index
        onTap:
            onitemTapped, // Call onitemTapped when a bottom nav item is tapped
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}

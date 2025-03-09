import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import Home Screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startCountdown(); // Start the countdown when the screen is initialized
  }

  // Start the countdown using Future.delayed
  _startCountdown() {
    // This creates a 3-second delay
    Future.delayed(Duration(seconds: 3), () {
      // Once the delay finishes, navigate to the HomeScreen
      _navigateToHome();
    });
  }

  // Navigate to HomeScreen
  _navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => WhatsAppHomeScreen()), // Navigate to HomeScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF25D366), // WhatsApp Green background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://cdn.pixabay.com/photo/2015/08/03/13/58/whatsapp-873316_1280.png",
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to WhatsApp",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Timer message
            Text(
              "Redirecting in 3 seconds...",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

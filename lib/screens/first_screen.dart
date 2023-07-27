import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatelessWidget {
  Color main_color = Color(0xFF00B533);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDP University' ,style: TextStyle(color: Colors.black),), backgroundColor: Colors.white,
        actions: [
          // Add your image widget here
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Image.asset(
              'assets/pdp_logo.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to PDP University!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset('assets/pdp.jpg', height: 400 ),
            SizedBox(height: 20),
            Text(
              "PDP University - UK's Pearson BTEC is the official center of the international education program."
                "of the international education program."
              ,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the subjects screen
                Navigator.pushNamed(context, '/subjects');
              },
              style: ElevatedButton.styleFrom(
                // Set background color
                primary: main_color,
                // Set text color
                onPrimary: Colors.white,
                // Set button padding
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                // Set button shape
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Explore Subjects'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the events screen
                Navigator.pushNamed(context, '/events');
              },
              style: ElevatedButton.styleFrom(
                // Set background color
                primary: main_color,
                // Set text color
                onPrimary: Colors.white,
                // Set button padding
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                // Set button shape
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('University Events & Holidays'),

            ),
          ],
        ),
      ),
    );
  }
}

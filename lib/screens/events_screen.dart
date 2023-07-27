import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  final List<String> pastEvents = [
    '20.07.2023 19:00 | Magic party',
    '21.07.2023 19:00 | Award ceremony',
    '24.07.2023 19:00 | Hackathon',
    '27.07.2023 19:00 | Magic party',
    '28.07.2023 19:00 | Magic party',
    '30.07.2023 19:00 | Magic party',
  ];
  Color main_color = Color(0xFF00B533);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Events & Holidays', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
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
      body: ListView.builder(
        itemCount: pastEvents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.event),
            title: Text(pastEvents[index]),
            onTap: () {
              // You can add more detailed information or actions for each event
            },
          );
        },
      ),
    );
  }
}

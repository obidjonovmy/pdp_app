import 'package:flutter/material.dart';


class SubjectsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> subjects = [
    {'name': '   AI Artificial\n   Intelligence', 'details': 'After completing foundation course you can opt for \" AI faculty\" and this course will last for 3 years'},
    {'name': '  Business Analytics', 'details': 'After completing foundation course you can opt for \"Business Analytics faculty\" and this course will last for 3 years'},
    {'name': '   Business\n   Management', 'details': 'After completing foundation course you can opt for \"Business Management\" and this course will last for 3 years'},
  ];
  Color main_color = Color(0xFF00B533);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects and Courses',style: TextStyle(color: Colors.black),),
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Show subject details as a dialog
              _showSubjectDetails(context, subjects[index]);
            },
            child: Card(
              child: Center(
                child: Text(subjects[index]['name'] , style: TextStyle(
                  color: main_color,
                  fontSize: 20
                ),),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showSubjectDetails(BuildContext context, Map<String, dynamic> subject) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(subject['name']),
          content: Text(subject['details']),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

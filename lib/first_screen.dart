import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';

// ignore: must_be_immutable
class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  String myMessage = 'Good job!';

  @override
  Widget build(BuildContext context) {
    void gotoSecondScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return const SecondScreen(
            message: 'Good job!',
          );
        }),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: gotoSecondScreen,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              child: const Text('Second Screen'),
            )
          ],
        ),
      ),
    );
  }
}

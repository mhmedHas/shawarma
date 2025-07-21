import 'package:flutter/material.dart';
import 'package:webapp/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate a splash screen
    Future.delayed(const Duration(seconds: 10), () {
      // Navigate to the main page after the delay
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => WebViewApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 200),
            const Spacer(flex: 4),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   "شركة شمال الحجاز للتوظيف",
                  //   style: TextStyle(
                  //     color: const Color.fromARGB(255, 16, 1, 150),
                  //     fontSize: 35,
                  //   ),
                  // ),

                  // Text(
                  //   "lina",
                  //   style: TextStyle(color: Colors.orange, fontSize: 30),
                  // ),
                ],
              ),
            ),
            const Spacer(flex: 1),
            Center(
              child: SizedBox(
                height: 200,
                width: 300,
                child: Image.asset("lib/assets/icon.jpeg"),
              ),
            ),
            const Spacer(flex: 2),

            // Text(
            //   ' Eng.Mohamed Ibrahim ',
            //   style: TextStyle(
            //     fontSize: 22,
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            const Spacer(flex: 1),

            // Add the footer content here
            const Spacer(flex: 2),
            // This will add "CodeCrafter" in the center
            const Text(
              'CodeCrafters',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Spacer(flex: 1),
            // This will add the phone numbers at the bottom left and right
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:webapp/splash.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// void main() {
//   runApp(const WebViewApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const WebViewApp(),
//     );
//   }
// }

// class WebViewApp extends StatefulWidget {
//   const WebViewApp({super.key});

//   @override
//   State<WebViewApp> createState() => _WebViewAppState();
// }

// class _WebViewAppState extends State<WebViewApp> {
//   late final WebViewController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         WebViewController()
//           ..setJavaScriptMode(JavaScriptMode.unrestricted)
//           ..loadRequest(Uri.parse('https://easypay1970.com/'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 34, 42, 50),
//         title: const Text(
//           'مدرسه الياسات الخاصه',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: WebViewWidget(controller: _controller),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:webapp/splash.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cairo', // تطبيق الخط على كل النصوص
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.w600,
          ), // للتأكيد على SemiBold
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse('https://alhejaz-nor.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 7, 134),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "شركة شمال الحجاز للتوظيف",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
              ),
            ),

            // Text("Pay ", style: TextStyle(color: Colors.blue, fontSize: 30)),
          ],
        ),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}

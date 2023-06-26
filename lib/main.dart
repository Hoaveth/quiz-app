import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text("My Flutter App")),
          // body: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: const [
          //       Icon(Icons.backpack),
          //       Icon(Icons.backpack),
          //       Icon(Icons.backpack)
          //     ]),
          body: Stack(
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Icon(Icons.verified),
            ],
          )),
    );
  }
}

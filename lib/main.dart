import 'package:flutter/material.dart';
import 'home.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Quiz App"),
        backgroundColor: Color.fromARGB(255, 141, 17, 131),
        foregroundColor: Colors.white,
        centerTitle: true,
        toolbarTextStyle:
            const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 183, 58, 177),
                Color.fromARGB(255, 156, 87, 55)
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/flutter.png',
                  height: 150,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return Home();
                        }),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 255, 255))),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Start your Flutter Quiz Now',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}

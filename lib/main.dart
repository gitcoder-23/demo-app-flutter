import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// build method decorator
  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
      // home: Text('Hello World'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
          centerTitle: true,
          // backgroundColor: Colors.pink,
          backgroundColor: const Color.fromARGB(240, 160, 29, 73),
        ),
        body: const Center(
          child: Text(
            'New Flutter For Learning',
            style: TextStyle(
                fontSize: 30,
                // color: Color.fromARGB(255, 119, 13, 59),
                // fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // ignore: avoid_print
        //     print('Button Clicked');
        //   },
        //   backgroundColor: const Color.fromARGB(240, 160, 29, 73),
        //   // child: const Text('Plus'),
        // child: const Icon(
        //   Icons.add,
        //   size: 50,
        // ),

        // ),
        floatingActionButton: SizedBox(
          // height: 100.0,
          // width: 100.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                // ignore: avoid_print
                print('Button Clicked');
              },
              backgroundColor: const Color.fromARGB(240, 160, 29, 73),
              child: const Icon(
                Icons.add,
                size: 50,
              ),
            ),
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

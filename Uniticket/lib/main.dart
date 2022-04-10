import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Rules:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        '- The student cant reach a maximum of 3 cancellations. '
        '- In case the Authenticated student fails to show up, he is given a '
        'time sanction of 12 hours. ',
        softWrap: true,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );

    return MaterialApp(
      title: 'UniTicket',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Uniticket'),
          backgroundColor: const Color(0xff6f0a0a),
        ),
        body: Column(children: [
          titleSection,
          textSection,
        ]),
      ),
    );
  }
}

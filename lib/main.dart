import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My App')),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Graphic'),
                  ),
                  elevation: 5,
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('First Card'),
                  ),
                  elevation: 5,
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('First Card'),
                  ),
                  elevation: 5,
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('First Card'),
                  ),
                  elevation: 5,
                ),
              )
            ],
          )),
    );
  }
}

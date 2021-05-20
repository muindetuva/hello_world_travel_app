import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World Travel Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World Travel'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(builder: (context) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Hello World Travel',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Discover the world',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurpleAccent,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.network(
                      'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                      height: 350,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                        onPressed: () => contactUs(context),
                        child: Text('Contact Us'),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
      )
    );
  }
  }

  void contactUs(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at hello@world.com'),
          actions: [
            TextButton(
              child: Text('close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
  );
  }

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp(
      items: List<String>.generate(10000, (i) => "item $i"),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Long List'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}

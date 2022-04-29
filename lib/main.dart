import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSwatch(
          //   primarySwatch: Colors.blue,
          // ).copyWith(
          //   secondary: Colors.green,
          // )
          brightness: Brightness.light,
          primaryColor: Colors.blue,
          accentColor: Colors.orange),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List todos = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    todos.add("Nemenin Ayang");
    todos.add("Ngerjain Web Ayang");
    todos.add("Bantuin Poster Ayang");
    todos.add("Semangatin ayaang :)");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasan Weekly task"),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todos[index]),
                child: Card(
                  child: ListTile(
                    title: Text(todos[index]),
                  ),
                ));
          }),
    );
  }
}
// last minumte 4 from https://www.youtube.com/watch?v=KfhBsahIk7w&t=237s
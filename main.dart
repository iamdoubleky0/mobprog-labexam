import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> names = ["Dan", "Reyes", "John"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF102030),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF001F3F),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              Icon(Icons.home),
              SizedBox(width: 8),
              Text('Hello World', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              String name = names[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 20,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.black,
                ),
                title: Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '${name.length} characters',
                  style: TextStyle(color: Colors.grey[400]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

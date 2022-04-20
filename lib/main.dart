import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.grey,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                leading: Image.network("https://tse1.mm.bing.net/th?id=OIP.e8lYgvFXpZRTks1KhCgQ1wHaHa&pid=Api&rs=1&c=1&qlt=95&w=116&h=116"),
                title: Text(
                  "gambar sepatu",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  "Stock",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ));
  }
}

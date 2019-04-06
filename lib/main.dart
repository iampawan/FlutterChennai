import 'package:flutter/material.dart';
import 'package:flutterchennaivs/instagram/instagram_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Chennai",
    theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black, fontFamily: "Aveny")),
        textTheme: TextTheme(title: TextStyle(color: Colors.black))),
    home: InstaPage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GDG Chennai",
        ),
      ),
      body: Center(
        child: Text(
          "Welcome to GDG Chennai",
          textAlign: TextAlign.center,
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                "mtechviral@gmail.com",
              ),
              accountName: Text("Pawan Kumar"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://secure.meetupstatic.com/photos/event/8/6/3/d/600_462394365.jpeg"),
              ),
            ),
            ListTile(
              title: Text("Option 1"),
              subtitle: Text("This is option 1"),
              leading: CircleAvatar(
                child: Text("1"),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("Option 2"),
              subtitle: Text("This is option 2"),
              leading: CircleAvatar(
                child: Text("2"),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("Option 3"),
              subtitle: Text("This is option 3"),
              leading: CircleAvatar(
                child: Text("3"),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

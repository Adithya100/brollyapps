import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Drawer getNavDraw(BuildContext context) {
    var headerChild = DrawerHeader(child: Text("Header"));
    var aboutChild = AboutListTile(
      child: Text("About"),
      applicationName: "App Name",
      applicationIcon: Icon(Icons.adb),
      applicationVersion: "v1.0.0",
      icon: Icon(Icons.info),
    );
    ListTile getNavItem(var icon, String str, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(str),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [headerChild, aboutChild];
    ListView listView = ListView(
      children: myNavChildren,
    );
    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"), 
      ),
      body: Container(
        child: Center(
          child: Text("Home Screen"),
        ),
      ),
      drawer: getNavDraw(context),
    );
  }
}

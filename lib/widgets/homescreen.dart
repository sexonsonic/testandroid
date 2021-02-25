import 'package:flutter/material.dart';
import '../layouts/global.dart' as global;
import '../layouts/lokal.dart' as lokal;

void main() {
  runApp(new MaterialApp(
    title: 'Tab Bar',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //Create controller untuk TabBar
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appbar
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue,
        title: new Text('Tracking Covid-19'),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.leaderboard),
              text: "Global",
            ),
            new Tab(
              icon: new Icon(Icons.location_on),
              text: "Provinsi",
            ),
            // new Tab(
            //   icon: new Icon(Icons.shopping_cart),
            //   text: "Shopping",
            // ),
            // new Tab(
            //   icon: new Icon(Icons.perm_media),
            //   text: "Gallery",
            // ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new global.Global(),
          new lokal.Lokal(),
          // new shopping.Shopping(),
          // new profile.Profile(),
        ],
      ),
    );
  }
}

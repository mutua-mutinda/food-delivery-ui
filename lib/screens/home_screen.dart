import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Cart (${currentUser.cart!.length})',
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
            onPressed: () {},
          )
        ],
        title: Text('Food Delivery'),
      ),
      body: ListView(
        children: <Widget>[
          TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: .9)),
            hintText: "Search Food or Restuarant",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 30.0,
            ),
          )),
        ],
      ),
    );
  }
}

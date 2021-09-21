import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/widgets/rating_stars.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({this.restaurant});

  final Restaurant? restaurant;

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Hero(
            tag: widget.restaurant!.imageUrl.toString(),
            child: Image(
              height: 220.0,
              width: MediaQuery.of(context).size.width,
              image: AssetImage(widget.restaurant!.imageUrl.toString()),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  iconSize: 30.0,
                  onPressed: () => Navigator.pop(context),
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.favorite),
                  iconSize: 30.0,
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.restaurant!.name.toString(),
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  '0.2 miles away',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            RatingStars(widget.restaurant!.rating!),
            SizedBox(
              height: 6.0,
            ),
            Text(
              widget.restaurant!.address.toString(),
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
      Row(
        children: <Widget>[
          // TextButton(padding: const EdgeInsets.symmetric(horizontal: 30.0),
          // color: Theme.of(context).primaryColor)
        ],
      )
    ]));
  }
}

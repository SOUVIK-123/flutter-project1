import 'package:flutter/material.dart';
import 'restaurant_list_screen.dart';
import 'restaurant_details_screen.dart';

void main() {
  runApp(FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/restaurantList': (context) => RestaurantListScreen(),
        '/restaurantDetails': (context) => RestaurantDetailsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/restaurantList');
              },
              child: Text('Restaurant List'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/restaurantDetails');
              },
              child: Text('Restaurant Details'),
            ),
          ],
        ),
      ),
    );
  }
}

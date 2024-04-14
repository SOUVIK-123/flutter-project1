import 'package:flutter/material.dart';
import 'restaurant_list_screen.dart'; // Import the RestaurantListScreen if it's in a separate file

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Find your favorite food!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the list of restaurants
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestaurantListScreen()),
                );
              },
              child: Text('Explore Restaurants'),
            ),
          ],
        ),
      ),
    );
  }
}

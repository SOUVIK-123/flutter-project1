import 'package:flutter/material.dart';
import 'restaurant_details_screen.dart'; // Import the RestaurantDetailsScreen if it's in a separate file

class RestaurantListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual restaurant data
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Restaurant ${index + 1}'),
            onTap: () {
              // Navigate to the restaurant details screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestaurantDetailsScreen()),
              );
            },
          );
        },
      ),
    );
  }
}

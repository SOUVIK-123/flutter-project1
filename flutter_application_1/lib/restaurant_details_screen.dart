import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  @override
  _RestaurantDetailsScreenState createState() => _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> {
  GoogleMapController? _controller;

  void _animateToNewPosition(LatLng newPosition) {
    if (_controller != null) {
      _controller!.animateCamera(CameraUpdate.newLatLng(newPosition));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Details'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(37.7749, -122.4194), // Default map position (San Francisco)
                zoom: 14.0,
              ),
              onMapCreated: (controller) {
                setState(() {
                  _controller = controller;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Restaurant Name',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Restaurant Address',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Example: Animate the map to a new location (e.g., a different restaurant)
                    _animateToNewPosition(LatLng(40.7128, -74.0060)); // New York coordinates
                  },
                  child: Text('Show New Location'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

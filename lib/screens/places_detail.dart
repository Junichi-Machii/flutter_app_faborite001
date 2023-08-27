import 'package:flutter/material.dart';
import 'package:flutter_appl_favorite_places/models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Stack(
        children: [
          Image.file(
            place.image,
            fit: BoxFit.cover,
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            height: double.infinity,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

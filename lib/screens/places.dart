import 'package:flutter/material.dart';
import 'package:flutter_appl_favorite_places/screens/add_place.dart';
import 'package:flutter_appl_favorite_places/widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Places List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Navigator.pushNamed(context, '/add_place');
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddPlaceScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: PlacesList(places: []),
    );
  }
}

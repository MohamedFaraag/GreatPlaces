import 'package:flutter/material.dart';

import '../Screens/add_places.dart';

class PlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Places'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaces.routeName);
              print('Navigator to AddPlaces');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Hai'),
      ),
    );
  }
}

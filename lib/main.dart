import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './Screens/place_list.dart';
import './Providers/Great_Places.dart';
import './Screens/add_places.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlaceList(),
        routes: {AddPlaces.routeName: (ctx) => AddPlaces()},
      ),
    );
  }
}

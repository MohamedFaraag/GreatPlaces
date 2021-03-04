import 'package:flutter/foundation.dart';

import '../Models/placeModel.dart';

class GreatPlaces extends ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }
}

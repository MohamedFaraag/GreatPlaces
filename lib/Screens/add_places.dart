import 'package:flutter/material.dart';

import '../Widgets/Image_inPuts.dart';

class AddPlaces extends StatefulWidget {
  static String routeName = '/Add=Places';
  @override
  _AddPlacesState createState() => _AddPlacesState();
}

class _AddPlacesState extends State<AddPlaces> {
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Places'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titleController,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ImageInPut()
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: RaisedButton.icon(
              elevation: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Theme.of(context).accentColor,
              label: Text(
                "Add New Place",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

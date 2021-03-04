import 'dart:io';

import 'package:flutter/material.dart';

class ImageInPut extends StatefulWidget {
  @override
  _ImageInPutState createState() => _ImageInPutState();
}

class _ImageInPutState extends State<ImageInPut> {
  File _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: _storedImage != null
              ? Image.file(
                  _storedImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Text(
                  'No Image Taken',
                  textAlign: TextAlign.center,
                ),
          alignment: Alignment.center,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.camera),
            label: Text('Take Photo'),
            textColor: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}

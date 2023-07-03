part of 'constant.dart';

const textField = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(Icons.location_city, color: Colors.white, size: 25),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.black),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(13)),
    borderSide: BorderSide.none,
  ),
);

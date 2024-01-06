import 'package:flutter/material.dart';

class Place {
  String name;
  String location;
  String rating;
  String distance;
  String noOfResturants;
  String discription;
  Image Iimage;
  Place(
      {required this.name,
      required this.location,
      required this.rating,
      required this.distance,
      required this.noOfResturants,
      required this.discription,required this.Iimage});
}

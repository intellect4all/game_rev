import 'package:flutter/material.dart';

class Spacing extends SizedBox{
  const Spacing({this.height,this.width,super.key, });

  final double? height;
  final double? width;

  factory Spacing.vertical(double height) => Spacing(height: height);
  factory Spacing.horizontal(double width) => Spacing(width: width);
}
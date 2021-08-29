import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String images;

  const Category({
    required this.id,
    required this.title,
    required this.images,
    this.color = Colors.orange,
  });
}

import 'package:flutter/material.dart';

import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('                         Sajilo Foods'),
        backgroundColor: Colors.pinkAccent.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView(
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                    catData.title, catData.id, catData.color, catData.images),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: 230,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 30,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}

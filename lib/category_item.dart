import 'package:flutter/material.dart';
import 'package:flutter_application_1/thakali.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;
  final String images;

  CategoryItem(this.title, this.id, this.color, this.images);

  void goto_category(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return thakali(id, title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goto_category(context),
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 300,
        width: 220,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.pinkAccent.shade400,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(images),
            ),
            ListTile(
              leading: Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

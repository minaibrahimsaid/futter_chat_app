import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  CategorySelector({Key key}) : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  void _handleSelectCategory(int index) {
    setState(() {
      this.selectedIndex = index;
    });
  }

  final List<String> categories = ["Messages", "Onlines", "Groups", "Requests"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () => _handleSelectCategory(index),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: index == selectedIndex
                                    ? Colors.white
                                    : Colors.white60,
                                fontSize: 24,
                                letterSpacing: 1.2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        },
        itemCount: categories.length,
      ),
    );
  }
}

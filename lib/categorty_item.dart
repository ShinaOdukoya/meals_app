import 'package:flutter/material.dart';
// import './category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color, {super.key});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/category-meals',
      arguments: {
        'id': id,
        'title': title,
      },
      /**No longer using push */
      // MaterialPageRoute(
      //   builder: (_) {
      //     return CategoryMealsScreen(id, title);
      //   },
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      // splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        /**Can use card instead of
         * constructing it manually
         */
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              //slightly transparent
              color.withOpacity(0.7),
              //not transparent
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          // style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}

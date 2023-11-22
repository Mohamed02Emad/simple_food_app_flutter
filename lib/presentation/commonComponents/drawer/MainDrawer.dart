import 'package:flutter/material.dart';
import 'package:simple_food_app/presentation/commonComponents/drawer/MainDrawerButton.dart';

class MainDrawer extends StatelessWidget {
  final Function handleClicks;
  const MainDrawer({required this.handleClicks,super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 243, 137, 101),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          MainDrawerButton(
            text: "Categories",
            iconData: Icons.dining_outlined,
            onClick: () {
              handleClicks(0);
              Navigator.pop(context);
              // navigateTo(context, const CategoriesScreen());
            },
          ),
          MainDrawerButton(
            text: "Favourite",
            iconData: Icons.star_border,
            onClick: () {
              handleClicks(1);
              Navigator.pop(context);
              // navigateTo(context, const FavouriteScreen());
            },
          ),
        ],
      ),
    );
  }

}

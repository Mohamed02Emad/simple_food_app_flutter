import 'package:flutter/material.dart';

class MainDrawerButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function onClick;

  const MainDrawerButton({required this.text, required this.iconData, required this.onClick ,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color.fromARGB(153, 255, 87, 34),
      splashFactory: InkRipple.splashFactory,
      onTap: () {
        onClick();
      },
      child:  ListTile(
        leading:  Icon(iconData, size: 20),
        title: Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}

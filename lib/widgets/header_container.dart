import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 6, bottom: 6),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

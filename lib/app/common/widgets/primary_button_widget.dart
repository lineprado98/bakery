import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;

  const PrimaryButtonWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(150, 60)),
        backgroundColor: MaterialStateColor.resolveWith((states) => Theme.of(context).colorScheme.primary),
      ),
      child: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
    );
  }
}

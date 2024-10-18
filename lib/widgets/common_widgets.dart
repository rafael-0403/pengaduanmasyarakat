import 'package:flutter/material.dart';

// Misalnya widget untuk AppBar yang sering digunakan
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({required this.title, super.key});

@override
Widget build(BuildContext context) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.blue,
  );
}

@override
Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

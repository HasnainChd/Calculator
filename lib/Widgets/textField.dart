import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller,
  });

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 50),
        decoration: const InputDecoration(
          fillColor: AppColors.secondary2Color,
          filled: true,
          border: InputBorder.none,
        ),
        readOnly: true,
        showCursor: true,
        autofocus: true,
      ),
    );
  }
}

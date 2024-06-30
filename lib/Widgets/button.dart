import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';

class Button extends StatelessWidget {
  final String label;
  final Color textColor;
  const Button({
    super.key, required this.label,  this.textColor=Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Provider.of<CalProvider>(context,listen: false).setValue(label),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(50),
        color: AppColors.primaryColor,
        child: CircleAvatar(
          radius: 36,
          backgroundColor:AppColors.secondary2Color,
          child: Text(label,style:  TextStyle(color: textColor,fontSize: 35,fontWeight: FontWeight.w600),),
        ),
      ),
    );
  }
}

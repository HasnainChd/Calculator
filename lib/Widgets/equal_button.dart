import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';

class equalButton extends StatelessWidget {
  const equalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Provider.of<CalProvider>(context,listen: false).setValue('='),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Center(child:  Text('=',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),)),),
    );
  }
}
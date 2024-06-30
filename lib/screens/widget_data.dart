import 'package:flutter/cupertino.dart';

import '../Widgets/button.dart';
import '../constants/colors.dart';

List<Widget>buttonsList=  [
  const Button(label: 'C',textColor: AppColors.secondaryColor,),
  const Button(label: '/',textColor: AppColors.secondaryColor,),
  const Button(label: 'X',textColor: AppColors.secondaryColor,),
  const Button(label: 'AC',textColor: AppColors.secondaryColor,),

  const Button(label: '7',),
  const Button(label: '8',),
  const Button(label: '9',),
  const Button(label: '+',textColor: AppColors.secondaryColor,),

  const Button(label: '4',),
  const Button(label: '5',),
  const Button(label: '6',),
  const Button(label: '-',textColor: AppColors.secondaryColor,),

  const Button(label: '1',),
  const Button(label: '2',),
  const Button(label: '3',),

  const Button(label: '%',),
  const Button(label: '0',),
  const Button(label: '.',),
];

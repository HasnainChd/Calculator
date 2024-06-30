
import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/screens/widget_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/button.dart';
import '../Widgets/equal_button.dart';
import '../Widgets/textField.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .sizeOf(context)
        .height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
      color: AppColors.secondary2Color,
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    );
    return Consumer<CalProvider>(
      builder: (context,provider,_)=> Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title:  const Center(child: Text('Calculator App'),),),
        body: Column(
          children: [
             CustomTextField(controller: provider.compController ,),
            const Spacer(),
            Container(
                padding: padding,
                height: height * 0.6,
                width: double.infinity,
                decoration: decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:List.generate(4, (index)=>buttonsList[index])
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:List.generate(4, (index)=>buttonsList[index+4])
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:List.generate(4, (index)=>buttonsList[index+8])
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:List.generate(3, (index)=>buttonsList[index+12])
                              ),
                              const SizedBox(height: 20),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:List.generate(3, (index)=>buttonsList[index+15]),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20,),
                        const equalButton(),
                      ],
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}




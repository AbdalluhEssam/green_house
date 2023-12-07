import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_house/view/resources/color_manager.dart';
import 'package:green_house/view/resources/font_manager.dart';
import 'package:green_house/view/resources/value_manager.dart';

import 'stack_userAccount.dart';

class Search_Field extends StatefulWidget {
   Search_Field({super.key});

  List card=[

  ];
  @override
  State<Search_Field> createState() => _Search_FieldState();
}

class _Search_FieldState extends State<Search_Field> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) =>TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.s30)),
        hintText:'Search' ,
        hintStyle: TextStyle(color: ColorManager.white,fontSize: AppSize.s20,fontWeight: FontWeightMnager.regular,),
        fillColor: ColorManager.deepGreen,
        filled: true,
        suffixIcon:IconButton(onPressed: () {

        }, icon: Icon(Icons.search,color: ColorManager.white, size: AppSize.s35,)) ,

      ),
      style: TextStyle(),

    ),
      scrollDirection: Axis.vertical,
      itemCount: 2,

    );
  }
}

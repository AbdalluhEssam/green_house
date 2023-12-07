import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/item_controller.dart';

class Item_View extends StatefulWidget {
  const Item_View({super.key});

  @override
  State<Item_View> createState() => _Item_ViewState();
}

class _Item_ViewState extends State<Item_View> {
  @override
  Widget build(BuildContext context) {
    ItemControllerImp controller  = Get.put(ItemControllerImp());
    return Scaffold(



    );
  }
}

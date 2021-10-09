import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'food_item.dart';

class FoodDetails extends StatelessWidget{
  const FoodDetails({Key? key}) : super(key: key);
  static const routeName = '/foodDetails';

  @override
  Widget build(BuildContext context) {
    var food = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
        appBar: AppBar(
          title: Text('${food.name}'),
        ),
        body:  Container(
          child:  Column(
            children: [
              Image.asset('assets/images/${food.image}',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('ชื่อเมนู:' '${food.name}' ,style: GoogleFonts.kanit(fontSize: 30.0)),
                    Text('ราคา:' '${food.price}' 'บาท',style: GoogleFonts.kanit(fontSize: 30.0)),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
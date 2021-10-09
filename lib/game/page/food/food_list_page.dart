import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw12/game/page/models/food_details.dart';
import 'package:hw12/game/page/models/food_item.dart';


class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  var items = [
    FoodItem(
      id: 1,
      name: 'ข้าวใข่เจียว',
      price: 25,
      image: 'kao_kai_jeaw.jpg',
    ),
    FoodItem(
      id: 2,
      name: 'ข้าวหมูแดง',
      price: 30,
      image: 'kao_moo_dang.jpg',
    ),
    FoodItem(
      id: 3,
      name: 'ข้าวมันไก่',
      price: 35,
      image: 'kao_mun_kai.jpg',
    ),
    FoodItem(
      id: 4,
      name: 'ข้าวหน้าเป็ด',
      price: 35,
      image: 'kao_na_ped.jpg',
    ),
    FoodItem(
      id: 5,
      name: 'ข้าวผัด',
      price: 35,
      image: 'kao_pad.jpg',
    ),
    FoodItem(
      id: 6,
      name: 'ผัดซีอิ๋ว',
      price: 35,
      image: 'pad_sie_eew.jpg',
    ),
    FoodItem(
      id: 7,
      name: 'ผัดไทย',
      price: 35,
      image: 'pad_thai.jpg',
    ),
    FoodItem(
      id: 8,
      name: 'ราดหน้า',
      price: 35,
      image: 'rad_na.jpg',
    ),
    FoodItem(
      id: 9,
      name: 'ส้มตำไก่ต่าง',
      price: 100,
      image: 'som_tum_kai_yang.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          FoodItem item = items[index];

          return Card(
            margin: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  //<route name ของหน้าปลายทาง>
                  FoodDetails.routeName,
                  arguments: item,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${item.image}',
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      item.name,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
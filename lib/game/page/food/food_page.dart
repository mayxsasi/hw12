import 'package:flutter/material.dart';
import 'package:hw12/game/page/food/food_list_page.dart';
import 'package:hw12/game/page/food/food_order_page.dart';





class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  var _subPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: "Menu"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Your Order"
          )
        ],
        currentIndex: _subPageIndex,
        onTap: (index) {
          setState(() {
            _subPageIndex = index;
          });
        },
      ),
      body: _buildSubPage() ,
    );
  }

  Widget _buildSubPage(){
    switch(_subPageIndex) {
      case 0: // home page
        return FoodListPage();
      case 1:
        return OrderPage();
      default:
        return SizedBox.shrink();

    }
  }
}
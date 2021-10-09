import 'package:flutter/material.dart';
import 'package:hw12/game/page/food/food_page.dart';
import 'package:hw12/game/page/profile_page.dart';



class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;
  List<String> titleName = ["Food", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titleName[_subPageIndex], style: TextStyle(color: Colors.white),),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [
                      0.4,
                      0.8,
                      1.0
                    ],
                    colors: [
                      Colors.orange.shade50,
                      Colors.orange.shade200,
                      Colors.orange.shade300,

                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          child: Image.asset('assets/images/profile.jpg'),
                        )),
                    Text("Sasithorn Thipphrom",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text("Thipphrom_s@silpakorn.edu",
                        style: TextStyle(color: Colors.white70, fontSize: 14))
                  ],
                ),
              ),
              _buildDrawerItem(Icons.fastfood, "Food", 0),
              _buildDrawerItem(Icons.person, "Profile", 1),
            ],
          ),
        ),
        body: _buildSubPage()
    );
  }

  Widget _buildSubPage() {
    switch (_subPageIndex) {
      case 0: // home page
        return FoodPage();
      case 1:
        return ProfilePage();
      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildDrawerItem(IconData icon, String title,int index) {
    return ListTile(
      leading: Icon(icon),
      title: Align(
        alignment: Alignment(-1.3, 0),
        child: Text(
          title,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      selected: index == _subPageIndex,
      onTap: () {
        Navigator.of(context).pop();
        setState(() {
          _subPageIndex = index;
        });
      },
    );
  }
}
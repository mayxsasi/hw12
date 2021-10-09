import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = "/profile";
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(80.0),
                    child: Container(
                      width: 160.0,
                      height: 160.0,
                      child: Image.asset('assets/images/profile.jpg'),
                    )
                ),
                Text("Sasithorn Thipphrom", style: Theme.of(context).textTheme.headline1,),
                Text("Thipphrom_s@silpakorn.edu", style: Theme.of(context).textTheme.bodyText2,)
              ],
            ),
          ),
        ),
      );
  }
}
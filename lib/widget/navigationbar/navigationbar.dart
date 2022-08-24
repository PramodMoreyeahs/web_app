import 'package:flutter/material.dart';
class NavigationBarHome extends StatelessWidget {
  const NavigationBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 80,width: 150,child: Image.asset('asset/logo.png'),)
          ,Row(
            mainAxisSize: MainAxisSize.min,
            children: [
             NavBarItem('Home'),
              SizedBox(width: 60.0,),
              NavBarItem('About'),
              SizedBox(width: 60.0,),
              NavBarItem('Sell'),
            ],
          )
        ],
      ),
    );
  }
  
}
class NavBarItem extends StatelessWidget {
  String title;
   NavBarItem(this.title,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontSize: 18),);
  }
}

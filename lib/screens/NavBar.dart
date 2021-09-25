import 'package:flutter/material.dart';
import 'package:fluttertest/screens/History.dart';
import 'package:fluttertest/screens/Profile.dart';
import 'package:fluttertest/screens/booking.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'Home.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  List<Widget> screens = [Home(), Booking(), History(), Profile()];
  List<String> appbarTitle = ["Home", "Booking", "History", "Profile"];

  GestureDetector navItem(int index, BuildContext context,
      {IconData icon, String label, @required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
  //
        duration: Duration(milliseconds: 500),
        // color : index == currentIndex ? Colors.white : Colors.green,
        decoration: index == currentIndex
            ? BoxDecoration(
                border: Border(top: BorderSide(width: 5, color: Colors.green)),
                color: Colors.white)
            : BoxDecoration(
                 color: Color(0xFF6D9773),
              ),
        width: MediaQuery.of(context).size.width / 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon,color:  index == currentIndex ? Colors.black : Colors.white ,), Text(label,style: TextStyle(color:  index == currentIndex ? Colors.black : Colors.white),)],
        ),
      ),
    );
  }

  changeTab(int index) {
    print(index);
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6D9773),
          title: Text(appbarTitle[currentIndex]),
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          height: 60,
          color: Colors.green[300],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              navItem(0, context, onTap: () {
                changeTab(0);
              }, label: "หน้าแรก", icon: MdiIcons.home),
              navItem(1, context, onTap: () {
                changeTab(1);
              }, label: "จองคิว", icon: MdiIcons.book),
              navItem(2, context, onTap: () {
                changeTab(2);
              }, label: "ประวัติ", icon: MdiIcons.history),
              navItem(3, context, onTap: () {
                changeTab(3);
              }, label: "บัญชี", icon: MdiIcons.account),
            ],
          ),
        ),
        body: screens[currentIndex]);
  }
}

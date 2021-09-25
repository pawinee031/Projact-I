import 'package:flutter/material.dart';
import 'package:fluttertest/screens/login_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  GestureDetector menu({String label,@required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 2,color: Colors.grey[200]))
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label),
              Icon(MdiIcons.chevronRight)
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
      
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),
                color: Color(0xFFB8DEBD),
              )),
            ],
          ),
        ),
        menu(label: "Contact",onTap: (){}),
        menu(label: "Credit Card",onTap: (){}),
        menu(label: "Help Me",onTap: (){}),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 50),
          child: ElevatedButton.icon(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          }, 
        
          icon: Icon(MdiIcons.login), label: Text("SIGN IN") ),
        )
      ],
    );
  }
}
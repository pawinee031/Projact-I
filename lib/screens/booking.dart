import 'package:flutter/material.dart';
import 'package:fluttertest/screens/login_screen.dart';

class Booking extends StatelessWidget {
  const Booking({ Key key }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Booking'),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text('Page 1'),
              ),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
                              elevation: 5.0,
                              onPressed: () async {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              padding: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              color: Color(0xFF6D9773),
                              child: Text(
                                'BACK',
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ),)
          ],
        ),
      ),
    );
  }
}
// class booking extends StatefulWidget {
//   const booking({ Key key }) : super(key: key);

//   @override
//   _bookingState createState() => _bookingState();
// }

// class _bookingState extends State<booking> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('booking'),
      
//     );
//   }
// }


// //botton
//   Widget _buildAddBtn() {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 10.0),
//       width: double.infinity,
//       child: SizedBox(
//         height: 50,
//         child: RaisedButton(
//           elevation: 5.0,
         
//           padding: EdgeInsets.all(15.0),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0),
//           ),
//           color: Color(0xFF6D9773),
//           child: Text(
//             'NEXT',
//             style: TextStyle(
//               color: Colors.white,
//               letterSpacing: 1.5,
//               fontSize: 18.0,
//               fontWeight: FontWeight.bold,
//               fontFamily: 'OpenSans',
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildBackBtn() {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 10.0),
//       width: double.infinity,
//       child: SizedBox(
//         height: 50,
//         child: RaisedButton(
//           elevation: 5.0,
          
//           padding: EdgeInsets.all(15.0),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0),
//           ),
//           color: Color(0xFF6D9773),
//           child: Text(
//             'BACK',
//             style: TextStyle(
//               color: Colors.white,
//               letterSpacing: 1.5,
//               fontSize: 18.0,
//               fontWeight: FontWeight.bold,
//               fontFamily: 'OpenSans',
//             ),
//           ),
//         ),
//       ),
//     );
//   }


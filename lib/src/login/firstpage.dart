// import 'package:flutter/material.dart';
// import 'package:library_app/src/login/SIgnInScreen.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Admin'),
//           backgroundColor: Colors.green,
//         ),
//         body: Center(
//           child: Column(
//             children:  [
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/admin');
//                   },
//                   child: Text('data')),
//               SizedBox(
//                 height: 20,
//               ),
//               Card(
//                 elevation: 10,
//                 child: Padding(
//                   padding: EdgeInsets.all(25),
//                   child: Text(
//                     'GeeksforGeeks',
//                     style: TextStyle(color: Colors.green),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 //Use of SizedBox
//                 height: 30,
//               ),
//               Card(
//                 elevation: 10,
//                 child: Padding(
//                   padding: EdgeInsets.all(25),
//                   child: Text(
//                     'GeeksforGeeks',
//                     style: TextStyle(color: Colors.green),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'SIgnUpScreen.dart';
import 'package:library_app/src/screens/home_screen.dart';
import 'package:library_app/src/login/SIgnInScreen.dart';
import 'package:library_app/src/login/SIgnIInScreen.dart';
import 'package:library_app/src/utils/colors_utils.dart';

import 'package:url_launcher/url_launcher.dart';

// void main() {  
//   runApp(MyApp());  
// }  
  
class MyApp extends StatefulWidget {  
  @override  
  _MyAppState createState() => _MyAppState();  
}  
  
class _MyAppState extends State<MyApp> {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
          appBar: AppBar(  
            title: Text('Libraby App'),  
          ),  
          body: Center(child: Column(children: <Widget>[  
            Container(  
              margin: EdgeInsets.all(25),  
              child: TextButton(  
                child: Text('Admin', style: TextStyle(fontSize: 20.0),),  
                onPressed: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SignIInScreen()));},  
              ),  
            ),  
            Container(  
              margin: EdgeInsets.all(25),  
              child: TextButton(  
                child: Text('User', style: TextStyle(fontSize: 20.0),),  
                // color: Colors.blueAccent,  
                // textColor: Colors.white,  
                onPressed: () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SignInScreen()));},  
              ),  
            ),  
          ]  
         ))  
      ),  
    );  
  }  
}  
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool english = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                print('clicked english');
                
                english = true;
                Navigator.pushReplacementNamed(context, '/questions', arguments:{
                  'english': english
                } );
//                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Questions()))
              },
                          child: Container(
                
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(24)
                
                ),
              child: Text(
                "English",
                style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: () {
                print('clicked hindi');
              },
                          child: Container(
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 80),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(24)
                
                ),
              child: Text(
                "  हिन्दी  ",
                style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            
          ],
        ),
      ),
   
    );
  }
}
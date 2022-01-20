import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:notesbook/page/notes_page.dart';


class Pixel extends StatefulWidget {
  const Pixel({Key? key}) : super(key: key);

  @override
  _PixelState createState() => _PixelState();
}

class _PixelState extends State<Pixel> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
            ()=> Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
              builder: (context) => NotesPage(),), (route) => false));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Image.asset('assets/note.png',height: 250,width: 350,),
            SizedBox(height: 30,),
            Text('\nWelcome To Personal Notes',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
                fontFamily: 'Caveat',
                color: Colors.white,),),
            SizedBox(height: 80,),
            SpinKitFadingCube(color: Colors.orange,size: 50,)

          ],
        ),
      ),
    );
  }
}
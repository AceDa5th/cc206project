import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class first_screen extends StatefulWidget {

  @override
  _first_screenState createState() => _first_screenState();
}
final player = AudioCache();
class _first_screenState extends State<first_screen> {

  /*   LIQUID SWIPE ANIMATION FOR THE HOMESCREEN */

  final page = [

    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
            Color(0xFF913BFA),
            Color(0xff8f29af),
            Color(0xFF5036D5),
            Color(0xFF5B16D0),
          ],
        ),
      ),
      child: Column(   /*  FIRST PAGE OF THE HOMESCREEN   */
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('assets/flutterIcon.png'),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 15,),
          Text("Flutter Animation Project", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
          SizedBox(height: 15,),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius
                    .circular(20.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Text("Horacio Jason A. Barba V", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius
                    .circular(20.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Text("Audrey Salcedo", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius
                    .circular(20.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Text("Bea Merr Recabar", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
    Container(   /*   SECOND PAGE OF THE HOMESCREEN    */
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
            Color(0xFF4169E1),
            Color(0xFF1E90FF),
            Color(0xFF4682B4),
            Color(0xff5F9EA0),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container( padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 20),
          ),
          SizedBox(height: 40,),
          CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('assets/Ace2.jpg'),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 15,),
          /*FlatButton(
              color: Colors.transparent,
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                player.play('yamete.wav');            /*  INTERCHANGEABLE WITH THE TEXT BELOW   */
              },
              child: Text(
                "Horacio Jason A. Barba V",
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              )
          ),*/
          Text('Horacio Jason A. Barba V',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,                /*  INTERCHANGEABLE WITH THE FLATBUTTON ABOVE   */
                fontWeight: FontWeight.bold
            ),
                overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10,),
          Text("EWAN0",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    Container(     /*   THIRD PAGE OF THE HOMESCREEN    */
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
            Color(0xff8f29af),
            Color(0xFF913BFA),
            Color(0xFFEE82EE),
            Color(0xffBB86FC),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container( padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 20),
          ),
          SizedBox(height: 40,),
          CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('assets/Audrey.jpg'),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 15,),
          /*FlatButton(
              color: Colors.transparent,
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                player.play('yamete.wav');                        /*  INTERCHANGEABLE WITH THE TEXT BELOW   */
              },
              child: Text(
                "Audrey Salcedo",
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              )
          ),*/
          Text('Audrey Salcedo',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,                            /*  INTERCHANGEABLE WITH THE FLATBUTTON ABOVE   */
                fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10,),

          Text("EWAN1",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
            ),
                overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    Container(   /*   FOURTH PAGE OF THE HOMESCREEN    */
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
            Color(0xFFa1e5ff),
            Color(0xFF41c7fa),
            Color(0xFF008db8),
            Color(0xFF2e8caf),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container( padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 20),
          ),
          SizedBox(height: 40,),
          CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('assets/Bea.jpg'),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 15,),
          /*FlatButton(
              color: Colors.transparent,
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                player.play('yamete.wav');                      /*  INTERCHANGEABLE WITH THE TEXT BELOW   */
              },
              child: Text(
                "Bea Merr Recabar",
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              )
          ),*/
          Text('Bea Merr Recabar',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,                        /*  INTERCHANGEABLE WITH THE FLATBUTTON ABOVE   */
                fontWeight: FontWeight.bold
            ),
                overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10,),
          Text("EWAN2",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white), overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ];
  /*   LIQUID SWIPEEEE  */
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LiquidSwipe(
          pages: page,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}

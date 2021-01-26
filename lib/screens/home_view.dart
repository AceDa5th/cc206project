import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:CC206Project/widgets/wave_widget.dart';
import 'package:CC206Project/screens/first_view.dart';

class HomeView extends StatelessWidget {
  String email = 'cictapps@wvsu.edu.ph', password = '1234';
  /*   Declaration of the "Database"  */

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
  /*  Using Text Controller to find the inputs instead of an online database    */
    TextEditingController getemail = TextEditingController();
    TextEditingController getpassword = TextEditingController();

    return Scaffold(
  /*   Main Wave Widget for the Purple wave animation  */
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height - 200,
            color: Color(0xffBB86FC),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen ? -size.height / 3.7 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: Color(0xff121212),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                Form(
                  child: TextFormField(
                      controller: getemail,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Color(0xffBB86FC)),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color:Color(0xffBB86FC)),
                        ),
                      )
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Form(
                      child: TextFormField(
                        obscureText: true,
                        controller: getpassword,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Color(0xffBB86FC)),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color:Color(0xffBB86FC)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50.0,
                  width: 1000.0,
                  child: FloatingActionButton.extended(
                    label: Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    backgroundColor: Color(0xffBB86FC),
                    onPressed: () {   /*  GET'S THE EMAIL,PASSWORD FROM THE INPUTTED VALUES AND CONTRASTS IT TOWARDS THE GIVEN "DATABASE"  */
                      if (getemail.text == email && getpassword.text == password) {
                        print('log in Succesful');
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                first_screen()));
                      }
                      else{
                        print('Log in Failed');
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
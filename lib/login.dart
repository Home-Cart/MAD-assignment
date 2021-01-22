import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class login extends StatelessWidget {
  static const String  id = 'login';
  login({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(   // green shape
            top: 50,
            left: -50,
            child: SvgPicture.string(
              _svg_o3sexw,
              allowDrawingOutsideViewBox: true,
            ),
          ),
Container(
  padding: const EdgeInsets.only(left: 138.0, top: 70.0),
  child: CircleAvatar(
      radius: 72,
      backgroundColor: Colors.grey,
    child: CircleAvatar(
      radius: 70.0,
      backgroundImage: AssetImage("asessts/images/logo.png"),
    )


  ),
  ),



          Center(

            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 180.0),
              children: <Widget>[
                Center(

                    child:new Container(
                      height: 460,
                      width: 346,
                      child: Card(
                        elevation: 8.0,
                        child: Container(
                          height: 400,
                          width: 300,
                          padding: EdgeInsets.all(40.0 ),
                          child: Column(
                            children: <Widget>[
                              Text('SIGN IN', textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 40.0 ,fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),

                              Container(
                                width: 550.0,
                                height: 57.0,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape : BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child:  TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person,color:Colors.white, size: 30),
                                      labelText: "Username or Email",
                                      labelStyle:
                                      new TextStyle(color: Colors.white, fontSize: 22.0,fontWeight: FontWeight.bold,)),
                                  // style:
                                  // TextStyle(fontSize: 20.0, color: textTheme.button.color),
                                  //  validator: validateUserName,
                                  // onSaved: (val) => this.loginFields._username = val),

                                ),
                              ),


                              SizedBox(
                                height: 20.0,
                              ),

                              Container(
                                width: 550.0,
                                height: 57.0,

                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape : BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(15),

                                ),
                                child:TextField(

                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock,color:Colors.white, size: 30),
                                      labelText: "Password",
                                      labelStyle:
                                      new TextStyle(color: Colors.white, fontSize: 22.0,fontWeight: FontWeight.bold,)),
                                  // style:
                                  // TextStyle(fontSize: 20.0, color: textTheme.button.color),
                                  //  validator: validateUserName,
                                  // onSaved: (val) => this.loginFields._username = val),
                                ),

                              ),



                              SizedBox(
                                height: 15.0,
                              ),

                              Text('Forgot Password?', textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 20.0 ,fontWeight: FontWeight.bold,color: Colors.grey[600],),
                              ),

                              SizedBox(
                                height: 15.0,
                              ),

                              Material(
                                borderRadius: BorderRadius.circular(15.0),
                                elevation: 5.0,
                                child: MaterialButton(
                                  onPressed: () => {},
                                  minWidth: 150.0,
                                  height: 50.0,
                                  color: Colors.green,
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      fontSize: 23.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(child: Text("Don't Have a Account?" ,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                  Text("Sign Up",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),


                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        shape : BoxShape.rectangle,
                        gradient: new LinearGradient(
                          colors: [Colors.white60, Colors.white],
                        ),
                        boxShadow: [
                          BoxShadow(color: Colors.grey[350], spreadRadius: 5),
                        ],
                      ),
                    )

                ),

                SizedBox(
                  height: 25.0,
                ),

              ],
            ),
          ),
 Container(
   padding: const EdgeInsets.only(left: 5.0, right: 20.0, top: 730.0),
   child: Divider(

     color: Colors.black,
     height: 15,

     thickness: 2,
     indent: 30,
     endIndent: 0,
   ),
 ),


        Wrap (
          spacing: 1,

            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(left: 50.0, right: 20.0, top: 750.0),
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage("asessts/images/fb.png"),
                  )
              ),

              Container(
                  padding: const EdgeInsets.only(left: 50.0, right: 20.0, top: 750.0),
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage("asessts/images/google.png"),
                  )
              ),

              Container(
                  padding: const EdgeInsets.only(left: 50.0, right: 20.0, top: 750.0),
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage("asessts/images/twit.png"),
                  )
              ),

              Container(
                  padding: const EdgeInsets.only(left: 50.0, right: 20.0, top: 750.0),
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage("asessts/images/insta.png"),
                  )
              ),

            ]

        )

        ],
            ),
          );





  }

}





const String _svg_o3sexw =
    '<svg viewBox="-44.6 0.0 484.1 714.7" ><path transform="translate(-0.61, 61.61)" d="M 0 254.6762847900391 C 0 254.6762847900391 116.6208267211914 228.0655822753906 220.0392913818359 288.1297607421875 C 323.457763671875 348.1939086914063 413.6738586425781 653.07666015625 413.6738586425781 653.07666015625 L 440.0785827636719 -61.61100006103516 L -44.00785827636719 -61.61100006103516 L 0 254.6762847900391 Z" fill="#6cc950" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';


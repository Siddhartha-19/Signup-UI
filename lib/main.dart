import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
final List<String> tnames=[
  'Full Name',
  'Phone.No',
  'Email',
  'Password',
  'Confirm Password'

];
final List<Icon>
ticon=[
  Icon(Icons.person_outline),
  Icon(Icons.phone_android),
  Icon(Icons.email),
  Icon(Icons.vpn_key),
  Icon(Icons.vpn_key)
];

Widget custom(String tname,Icon ticons){
return Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
Padding(
  padding:EdgeInsets.only(bottom:10), 
              child:Container(
                margin: const EdgeInsets.only(right: 25, left: 25),
                decoration: BoxDecoration(

                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

Text(tname,
style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
              )),
              SizedBox(height:10),
              
TextField(
  decoration: InputDecoration(
    filled: true,
    focusColor: Colors.blue[100],
    enabledBorder: OutlineInputBorder(
      borderSide:BorderSide( color:Colors.blue[50],width:0.5)
    ),
    prefixIcon: 
     ticons,
    hintText:'Enter your $tname',
    hintStyle: TextStyle(
      color: Colors.white70,
    )

  ),
),
      ],
      ),
          )
),
],

);

}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        body: Container(
 margin: const EdgeInsets.only(right: 15, left: 15,top: 30,bottom: 30),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sign Up',
            style: TextStyle(
              color: Colors.white,
              
              fontSize: 24,
            ),),
            custom(tnames[0],ticon[0]),
            custom(tnames[1],ticon[1]),
            custom(tnames[2],ticon[2]),
            custom(tnames[3],ticon[3]),
            custom(tnames[4],ticon[4]),
            SizedBox(height:10),
            SizedBox(
              width:350,
              height:50,
           child: RaisedButton(
              onPressed:(){},
              child: Text('REGISTER',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                
              ),
              elevation: 3,
              
              ),
        ),
        SizedBox(height:5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
              Text('Have an Account ?',
              style: TextStyle(
              color: Colors.white,)),
              Text('Sign in',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              )
                ]
              )
          ],
        ),
      )
      )
    );
  }
}

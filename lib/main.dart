import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {// Add this line.
    return const MaterialApp(
    title: 'facebook login',
      home: Scaffold(
        backgroundColor: Color(0xff2c4b88),
        body: SingleChildScrollView(child:MyCustomForm()),

      ),
    );
  }
}


class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 120),
          child: Text(
            "facebook",
            style:TextStyle(fontSize: 50,fontFamily: 'klavika',color: Colors.white),
      )
    ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child:TextFormField(
            decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            labelText: 'Email or Phone Number',
            )
          )
      ),
      Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical:25),
            child:TextFormField(
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                )
            )
        ),
      Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                  height:50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      primary: const Color(0xff223c73),
                      ),
                    onPressed: () { },
                    child: const Text("Log In",
                      style: TextStyle(fontSize:20, fontWeight: FontWeight.bold)
            ),
          ),
        )
      ),
        const Padding(
            padding: EdgeInsets.only(top: 150 ),
            child:Align(
                alignment: Alignment.bottomCenter,
                child:Text(
                    "Signup For Facebook",
                    style:TextStyle(fontSize:14,color: Colors.white,decoration: TextDecoration.underline)
                ))
        ),
    ],

    );
  }
}
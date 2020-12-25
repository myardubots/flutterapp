import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:satsriakalpanjab/Detect.dart';
import 'package:satsriakalpanjab/about.dart';
import 'package:satsriakalpanjab/register.dart';

class register extends StatefulWidget {

  final Function toggleView;
  register({ this.toggleView });

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<register> {

  // final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: Text('Register'),
        actions: <Widget>[

        ],
      ),
      body: Container(

        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('assets/sign.png'),
            fit: BoxFit.cover,
          ),
        ),



        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),

        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 18.0),

              TextFormField(

                decoration: InputDecoration(



                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.lightGreenAccent,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: "Email",
                  errorText: "",


                  /*   errorStyle: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)*/

                ),



                //  decoration: textInputDecoration.copyWith(hintText: 'email'),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(



                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.lightGreenAccent,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: "Password",
                  errorText: "",


                  /*   errorStyle: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)*/

                ),






                validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 15.0),
              RaisedButton(

                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.lightGreenAccent),
                ),
                padding: EdgeInsets.fromLTRB(35,6,35,6),

                color: Colors.white.withOpacity(0.0),

                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                onPressed: (null),

                /*async {
                    if(_formKey.currentState.validate()){
                      setState(() => loading = true);
                      dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                      if(result == null) {
                        setState(() {
                          loading = false;
                          error = 'Could not sign in with those credentials';
                        });
                      }
                    }
                  }*/

              ),
              SizedBox(height: 100.0),






              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.lightGreenAccent, fontSize: 14.0),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
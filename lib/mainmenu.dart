import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'dart:math';

class screenOne extends StatefulWidget {
  const screenOne({Key? key}) : super(key: key);

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne>with SingleTickerProviderStateMixin{
   late AnimationController controller;
   late String email;
   late String password;
   final auth= FirebaseAuth.instance;
   var show=true;
   @override
  void initState() {
     controller=AnimationController(vsync: this,
     duration: Duration(seconds: 2));
     controller.forward();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFA5CAF4),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Center(
                   child: InkWell(
                      onTap: ()=> Navigator.pushNamed(context, '/homeScreen'),
                      child: Padding(
                        padding: const EdgeInsets.only(top:35.0),
                        child: Container(
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedBuilder(
                                animation: controller.view,
                                builder: (context, child){
                                  return Transform.rotate(angle: controller.value*2*pi,
                                  child:child);
                                },
                                child: Image(height: 120,
                                  width: 120,
                                  image: AssetImage('Images/mancity.png',),
                                ),
                              ),
                              Text("Manchester City FC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: 'parkson'
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                 ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (value){
                        email=value;
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0XFF001838),
                            )
                            ,borderRadius: BorderRadius.circular(50)
                        ),
                        fillColor: Colors.white,
                        focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFF001838),
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Color(0XFF001838),
                            fontFamily: 'Fjalla'
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: show,
                      onChanged: (value){
                        password=value;
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0XFF001838),
                            )
                            ,borderRadius: BorderRadius.circular(50)
                        ),
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: (){
                            setState(() {
                              show=false;
                            });

                          },
                        ),
                        focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0XFF001838),
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Color(0XFF001838),
                            fontFamily: 'Fjalla'
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async{
                      try{
                        var user= await auth.signInWithEmailAndPassword(email: email,
                            password: password);
                        if(user!= null){
                          Navigator.pushNamed(context, '/homeScreen');
                        }
                      }catch(e){
                        print(e);

                      }


                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),bottom: Radius.circular(40)),
                          color: Color(0XFF001838)
                      ) ,
                      child: Center(
                        child: Text("Sign In",
                          style: TextStyle(
                              color:Colors.white,
                              fontSize: 18,
                              fontFamily: 'Fjalla'
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 20,
                            fontFamily: 'Fjalla'
                        ),),
                      TextButton(
                          onPressed: ()=> Navigator.pushNamed(context, '/signUp'),
                          child: Text("Sign Up",
                            style: TextStyle(
                                color: Color(0XFF001838),
                                fontSize: 20,
                                fontFamily: 'Fjalla'
                            ),))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),);
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_signin_ui/Register.dart';
import 'package:flutter/material.dart';
import 'package:login_signin_ui/Welcome.dart';
import 'package:login_signin_ui/constant.dart';

void main() => runApp(  LoginPage()
);

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);

          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const Text("Let's sign you in.", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),),
              const SizedBox(height: 12,),
              const Text("Welcome Back", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35), ),
              const SizedBox(height: 5,),
              const Text("You've been missed!",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35,),),
              const  SizedBox(height: 20,),

              //First Textfield
              const  Text("Email", style: TextStyle(fontWeight: FontWeight.w700),),
              const SizedBox(height: 5,),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Your Email',
                  focusedBorder:  OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10,),

              //second Textfield
              const  Text("Password", style: TextStyle(fontWeight: FontWeight.w700),),
              const SizedBox(height: 5,),
              TextField (
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  suffixIcon: IconButton(
                    icon: const  Icon(
                     Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {

                    },
                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: const  OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 250,),
              SizedBox(
                width: 400,
                height: 50,
                child: TextButton( onPressed: (){
                  //My login here

                  String email = emailController.text;
                  String password = passwordController.text;
                 auth.signInWithEmailAndPassword(
                   email : email,
                   password : password,
                 )
                  .then((UserCredential userCredential){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage(),),
                    );
                  }
                  )
                  .catchError((error){
                    String errormessage = "Invalid Email or Password Or Login details not recognised";

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(errormessage),
                        backgroundColor: Colors.red,
                      ),
                    );

                 }

                  );

                },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              const  SizedBox(height: 7,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text("Don't have an Account?", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  TextButton(onPressed: (){
                    //Code to run
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage(),),
                    );
                  },
                    child: const Text("Register", style: TextStyle(color: Colors.black),), )
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}

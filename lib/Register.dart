 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signin_ui/login.dart';

import 'Welcome.dart';

void main() => runApp( const RegisterPage());
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                  //code for later
                },
                    icon: const  Icon(Icons.arrow_back_ios),
                ),

              const   Text("First Name", style: TextStyle(fontWeight: FontWeight.w700 ),),
                const  SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Your first name',
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              const  SizedBox(height: 10,),

           const Text("Second-Name",  style: TextStyle(fontWeight: FontWeight.w700 ),),
               const  SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Your second name',
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),

                const  SizedBox(height: 10,),
                const Text("Email",  style: TextStyle(fontWeight: FontWeight.w700 ),),
                const  SizedBox(height: 5,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Your Email',
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),

                const  SizedBox(height: 10,),
                const Text("Password",  style: TextStyle(fontWeight: FontWeight.w700 ),),
                const  SizedBox(height: 5,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon:const  Icon(Icons.visibility_off, color: Colors.black,),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),


                const  SizedBox(height: 10,),
                const Text("Confirm Password",  style: TextStyle(fontWeight: FontWeight.w700 ),),
                const  SizedBox(height: 5,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    suffixIcon:const  Icon(Icons.visibility_off, color: Colors.black,),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
             const   SizedBox(height: 130,),

                SizedBox(
                  width: 400,
                  height: 50,
                  child: TextButton(onPressed: (){
                    //My login here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage(),),
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
                    child: const Text("Register", style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),


                const  SizedBox(height: 7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text("Already have an account?", style: TextStyle(fontSize: 15, color: Colors.grey),),
                    TextButton(onPressed: (){
                      //Code to run
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  LoginPage(),),
                      );
                    },
                      child: const Text("Log in", style: TextStyle(color: Colors.black),), )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

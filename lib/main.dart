import 'package:flutter/material.dart';
import 'package:login_signin_ui/Register.dart';
import 'package:login_signin_ui/login.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );


  }
}
 class WelcomeScreen extends StatelessWidget {
   const WelcomeScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children:  [
             const  SizedBox(
               height: 470,
               width: 400,
               child: Image(
                 image: AssetImage("assets/Avatar_1.png"),
               ),
             ),
             Padding (
               padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:  [
                   const   Text("Enterprise Task\n  Management ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 45, letterSpacing: 1),),
                   const   SizedBox(height: 10,),
                   const  Text("Optimizing task management for", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22 ),),
                   const  SizedBox(height: 5,),
                   const   Text("improved business performance", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22),),
                   const  SizedBox(height: 20,),
                   Center(
                     child: SizedBox(
                       width: 400,
                       height: 50,
                       child: TextButton(onPressed: (){
                         //My login here
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const LoginPage(),),
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

             )
           ],

         ),
       ),



     );
   }
 }

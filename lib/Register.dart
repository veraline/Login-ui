 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( const RegisterPage());
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                //code for later
              },
                  icon: const  Icon(Icons.arrow_back_ios),
              ),

            const   Text("First Name"),
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
            ],
          ),
        ),
      ),
    );
  }
}

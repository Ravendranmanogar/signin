import 'package:flutter/material.dart';
import 'package:signin/reusable_widgets/reusable_widgets.dart';
import 'package:signin/utils/screen_utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailTextcontroller = TextEditingController();
  TextEditingController _passwordTextcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ],begin: Alignment.topCenter,end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height*0.2, 20, 0),
            child: Column(
              children: [
                //Image.asset("assets/logo1.png",color: Colors.white,),
                logoWidget("assets/logo1.png",),
                const SizedBox(height: 30,),
                reusableTextField("Enter your username", Icons.account_circle_outlined,false, _emailTextcontroller),
                const SizedBox(height: 20,),
                reusableTextField("Enter your password", Icons.lock,true, _passwordTextcontroller)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

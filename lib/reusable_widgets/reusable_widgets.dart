import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 400,
    height: 400,
    color: Colors.white,
  );
}
TextField reusableTextField(String text,IconData icon,bool ispasswordtype,TextEditingController controller){
  return TextField(
    controller: controller,
    obscureText: ispasswordtype,
    cursorColor: Colors.white,
    enableSuggestions: !ispasswordtype,
    autocorrect: !ispasswordtype,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(icon,color: Colors.white70,),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      fillColor: Colors.white.withOpacity(0.3),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(style: BorderStyle.none,width: 0)
      )
    ),
    keyboardType: ispasswordtype
    ? TextInputType.visiblePassword: TextInputType.emailAddress,
  );
}
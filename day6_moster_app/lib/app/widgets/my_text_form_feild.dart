import 'package:flutter/material.dart';
bool _obscureText = true;
Widget myTextFormFeild(
  {
    String  text = ''
  }
 ) 
     {
      if(text=='Password'){
        return TextFormField(
          cursorColor: const Color(0xFFF8FE11),
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obscureText,
          style: const TextStyle(
          color: Colors.white,
          ),
          decoration: InputDecoration(
          label: Text(
                    text,
                    style: const TextStyle(
                      color: Color(0xFF808696),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:  Color(0xFFF8FE11),
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      _obscureText ? Icons.visibility_off  : Icons.visibility
                    ),
                  )
                ),
              );
      }

      else{
        return TextFormField(
          cursorColor: const Color(0xFFF8FE11),
          keyboardType: TextInputType.visiblePassword,
          style: const TextStyle(
          color: Colors.white,
          ),
          decoration: InputDecoration(
          label: Text(
                    text,
                    style: const TextStyle(
                      color: Color(0xFF808696),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:  Color(0xFFF8FE11),
                    ),
                  ),
                ),
              );
      }
          
     }
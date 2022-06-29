import 'package:flutter/material.dart';

class CustomLoginTextField extends StatelessWidget {

  final String? hit;
  final void Function()? onTap;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final String label;
  bool? obscureText;
  TextEditingController? controller;
  Widget? prefix;
  FocusNode focusNode = FocusNode();
  TextInputType keyboardType;
  CustomLoginTextField({ required this.label, this.keyboardType = TextInputType.text  ,this.prefix, this.hit, this.onTap, this.validator , this.controller,this.obscureText = false , this.onChanged});
  @override
  Widget build(BuildContext context) {
    return  TextFormField(

        keyboardType: keyboardType,
        validator:(value){
          if (value == null || value.isEmpty) {
            return "$label is not registered."  ;
          }
          return null;
        },
        obscureText: obscureText!,
        onTap: onTap,
        onChanged: onChanged,
        controller: controller,

        style: const TextStyle(
          color: Colors.teal,
        ),
        decoration: InputDecoration(
          hintTextDirection: TextDirection.ltr,
            disabledBorder:buildTextFieldBorder(),
            enabledBorder: buildTextFieldBorder(),
            errorBorder: buildTextFieldBorder(),
            focusedErrorBorder: buildTextFieldBorder(),
            border: buildTextFieldBorder(),
            focusedBorder: buildTextFieldBorder(),
            labelStyle:const TextStyle(
                color: Colors.grey
            ) ,
            alignLabelWithHint: true,


            hintText: hit,
            hintStyle: const TextStyle( color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.white

        ),
      );
  }
  OutlineInputBorder buildTextFieldBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
        );
  }
}
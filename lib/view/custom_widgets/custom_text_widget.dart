import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {
        @required this.text,
        this.fontSize,
        this.color = Colors.black,
        this.textAlignment ,
        this.fontWeight = FontWeight.normal,
        this.maxLines = 10,
      });

  final String? text;
  final int? maxLines;
  final double? fontSize;
  final Color color;
  Alignment? textAlignment;
  final FontWeight fontWeight;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:  textAlignment,
      child: Text(
         text!,
        style: TextStyle(
          color:  color,
          fontSize:  fontSize,
          fontWeight:  fontWeight,
          overflow: TextOverflow.ellipsis,

        ),
        maxLines:  maxLines,

      ),
    );
  }
}

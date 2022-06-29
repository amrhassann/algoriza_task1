import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.width,
    required this.deviceHeight,
    required this.text,
    required this.onTap,
    this.color = Colors.teal,
  }) : super(key: key);

  final double width;
  final double deviceHeight;
  final Color color;
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        width: width,
        height: deviceHeight * .06,
        child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            )),
      ),
    );
  }
}
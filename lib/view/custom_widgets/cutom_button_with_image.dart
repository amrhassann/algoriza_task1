import 'package:flutter/material.dart';

class CustomButtonWithImage extends StatelessWidget {
  const CustomButtonWithImage({
    Key? key,
    required this.width,
    required this.deviceHeight,
    required this.text,
    required this.onTap,
    required this.imagePath,
    required this.textColor,
    this.borderColor = Colors.teal,
  }) : super(key: key);

  final double width;
  final double deviceHeight;
  final Color borderColor;
  final Color textColor;
  final String text;
  final String imagePath;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: deviceHeight * .06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(color: borderColor),
        ),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    imagePath,
                  ),
                  width: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
              ],
            )),
      ),
    );
  }
}
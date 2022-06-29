import 'package:algoriza_task/view/custom_widgets/custom_button.dart';
import 'package:algoriza_task/view/custom_widgets/custom_text_widget.dart';
import 'package:algoriza_task/view/custom_widgets/cutom_button_with_image.dart';
import 'package:algoriza_task/view/screens/register_screen.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_phone_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: deviceHeight * .25,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg.jpg', )
                )
            ),
          ),
          Container(
            height: deviceHeight * .75,
            padding: EdgeInsets.all(deviceWidth * .05),
            child: Column(
              children: [
                CustomText(
                  text: 'Welcome to Fashion Daily',
                  textAlignment: Alignment.centerLeft,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: deviceHeight * .02,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Sign in',
                      textAlignment: Alignment.centerLeft,
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        // on user tap on help button
                      },
                      child: Row(
                        children: [
                          CustomText(
                            text: 'Help',
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.help, color: Colors.blue),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomText(
                  text: 'Phone Number',
                  textAlignment: Alignment.centerLeft,
                ),
                const SizedBox(
                  height: 10,
                ),

                CustomPhoneTextField(
                  phoneNumberController: phoneNumberController,
                  onChanged: (value) {
                    // onChanged
                  },
                  onSaved: (value) {
                    // onSaved
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  text: 'Sign in',
                  width: deviceWidth,
                  deviceHeight: deviceHeight,
                  color: Colors.blue,
                  onTap: () {
                    //onTap
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomText(text: 'Or' , color: Colors.grey,),
                const SizedBox(
                  height: 15,
                ),
                CustomButtonWithImage(
                  imagePath: 'assets/images/google_icon.png',
                  text: 'Sign in with google',
                  width: deviceWidth,
                  deviceHeight: deviceHeight,
                  borderColor: Colors.blue,
                  textColor: Colors.blue,
                  onTap: () {
                    //onTap
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: "Doesn't has any account?" , fontSize: 16,),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (c)=>RegisterScreen()));
                        },
                        child: const Text('Register here',style: TextStyle(fontSize: 16,),))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: "Use the application according to policy rules, Any kinds of violations will be subject to sanction.",
                  fontSize: 17,
                  color: Colors.grey,
                  textAlignment: Alignment.center,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}





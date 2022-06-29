import 'package:algoriza_task/view/custom_widgets/custom_button.dart';
import 'package:algoriza_task/view/custom_widgets/custom_text_field.dart';
import 'package:algoriza_task/view/custom_widgets/custom_text_widget.dart';
import 'package:algoriza_task/view/custom_widgets/cutom_button_with_image.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_phone_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: deviceHeight * .15,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg.jpg', )
                )
            ),

            child: AppBar(
              backgroundColor: Colors.transparent,
              leading: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.only(left: 5),
                decoration:  BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios , color: Colors.white,),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: deviceHeight * .85,
            padding: EdgeInsets.all(deviceWidth * .05),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                        text: 'Register',
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
                    text: 'Email',
                    textAlignment: Alignment.centerLeft,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomLoginTextField(
                    label: 'Email',
                    hit: 'example@gmail.com',
                    onChanged: (value){},
                    controller: emailController,
                  ),

                  const SizedBox(
                    height: 10,
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

                  CustomText(
                    text: 'Password',
                    textAlignment: Alignment.centerLeft,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomLoginTextField(

                    label: 'Password',
                    hit: 'Password',
                    onChanged: (value){},
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Register',
                    width: deviceWidth,
                    deviceHeight: deviceHeight,
                    color: Colors.blue,
                    onTap: () {
                      //onTap
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(text: 'Or' , color: Colors.grey,),
                  const SizedBox(
                    height: 10,
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
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: "Has an account?" , fontSize: 16,),
                      TextButton(onPressed: (){},
                          child: const Text('Sign in here',style: TextStyle(fontSize: 16,),))
                    ],
                  ),
                  CustomText(
                    text: "By registering your account, you are agree to our",
                    fontSize: 17,
                    color: Colors.grey,
                    textAlignment: Alignment.center,
                  ),
                  TextButton(onPressed: (){},
                      child: const Text('terms and condition',style: TextStyle(fontSize: 16,),)),
                  const SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





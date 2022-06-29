import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomPhoneTextField extends StatelessWidget {
   CustomPhoneTextField({
    Key? key,
    required this.phoneNumberController,
    this.onChanged,
    this.onSaved
  }) : super(key: key);

  final TextEditingController phoneNumberController;
  void Function(PhoneNumber)? onSaved;
  void Function(PhoneNumber)? onChanged;
  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: onChanged,
      onSaved:onSaved,

      validator:(value){
        if (value == null || value.isEmpty) {
          return "phone Number is not registered." ;
        }
        return null;
      },

      autoValidateMode: AutovalidateMode.onUserInteraction,
      selectorTextStyle: const TextStyle(color: Colors.black),
      textFieldController: phoneNumberController,
      formatInput: false,
      keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
      inputBorder: const OutlineInputBorder(),

    );
  }
}
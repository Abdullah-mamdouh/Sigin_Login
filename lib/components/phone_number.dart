
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sign_login_screen/constant/constantColors.dart';

class Flag_PhoneNumber extends StatefulWidget {
  @override
  _Flag_PhoneNumberState createState() => _Flag_PhoneNumberState();
}

class _Flag_PhoneNumberState extends State<Flag_PhoneNumber> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber();

  @override
  Widget build(BuildContext context) {
    return Container(

      //padding: EdgeInsets.only(left: 8,right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InternationalPhoneNumberInput(

            textStyle: TextStyle(color: Colors.white,),
            hintText: 'Eg. 821345678',
            cursorColor:Colors.black,
            onInputChanged: (PhoneNumber number) {
              print(number.phoneNumber);
            },
            onInputValidated: (bool value) {
              print(value);
            },
            selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            ),
            ignoreBlank: false,

            validator: (value){
              print('phone number is not registered');
          },
            countrySelectorScrollControlled: false,

            autoValidateMode: AutovalidateMode.disabled,
            selectorTextStyle: TextStyle(color: Colors.black),
            initialValue: number,
            textFieldController: controller,
            formatInput: false,

            keyboardType:
            TextInputType.numberWithOptions(signed: true, decimal: true),
            inputBorder: OutlineInputBorder(),
            onSaved: (PhoneNumber number) {
              print('On Saved: $number');
            },
          ),
        ],
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber);

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
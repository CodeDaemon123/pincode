import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PinCodeTextField(
          keyboardType: TextInputType.number,
          obscureText: true,
          obscuringCharacter: "*",
          appContext: context,
          controller: controller,
          length: 4,
          cursorColor: Colors.white,
          backgroundColor: Colors.white,
          cursorHeight: 19,
          enableActiveFill: true,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly
          ],
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            fieldWidth: 70,
            fieldHeight: 65,
            inactiveColor: Colors.green,
            selectedColor: Colors.green,
            activeColor: Colors.green,
            activeFillColor: Colors.green,
            selectedFillColor: Colors.green,
            borderWidth: 1,
            borderRadius: BorderRadius.circular(7)),
          onChanged: ((value){}),
          ),
        ),
    );
  }
}

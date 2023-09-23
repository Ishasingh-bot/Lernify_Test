import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({
    Key? key,
    required this.countryCode,
    required this.phoneNumber,
  }) : super(key: key);
  final String countryCode;
  final String phoneNumber;

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Text(
                'OTP Verify',
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.purple[600],
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/chat.png',
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "OTP Sent to",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                widget.countryCode + widget.phoneNumber,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OtpTextField(
                fieldWidth: 80,
                borderRadius: BorderRadius.circular(10),
                numberOfFields: 4,
                showFieldAsBox: true,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              content:
                                  const Text("Your details has been submitted"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("ok"))
                              ],
                            ));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromWidth(double.maxFinite),
                    backgroundColor: Colors.purple[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Verify OTP"),
                ),
              ),
              const Text(
                  "By signing up, you agree with our Terms and conditions"),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'otp_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController countryCode = TextEditingController(text: "+91");
  TextEditingController phoneNumber = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              'Log In',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.purple[600],
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 40,
            ),
            const Image(
              image: AssetImage(
                'assets/chat.png',
              ),
              height: 300,
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryCode,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "|",
                      style:
                          TextStyle(fontSize: 33, color: Colors.purple[600]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: phoneNumber,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone Number",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyOtp(
                                countryCode: countryCode.text,
                                phoneNumber: phoneNumber.text,
                              )));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite),
                  backgroundColor: Colors.purple[600],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Get OTP'),
              ),
            ),
            const Text(
                "By signing up, you agree with our Terms and conditions"),
          ]),
        ),
      ),
    );
  }
}

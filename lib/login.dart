import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nectar/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/log.jfif",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              const Align(
                alignment: Alignment(-0.8, 0.1),
                child: Text(
                  "Get your groceries \nwith nectar",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
                initialCountryCode: 'EG',
                onChanged: (phone) {
                  // print(phone.completeNumber);
                },
              ),
              const Center(
                child: Text(
                  "Or connect with social Media",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: InkWell(
                    onTap: () {
                      navigateToNextScreen(context);
                    },
                    child: Ink(
                      color: const Color.fromRGBO(33, 150, 243, 1.000),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Image.asset(
                              "images/googlew.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                            const SizedBox(width: 50),
                            const Text(
                              'Continue with Google',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: InkWell(
                    onTap: () {
                      navigateToNextScreen(context);
                    },
                    child: Ink(
                      color: const Color.fromRGBO(63,81,181,1.000),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Image.asset(
                              "images/facebook.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                            const SizedBox(width: 50),
                            const Text(
                              'Continue with Facebook',
                              style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

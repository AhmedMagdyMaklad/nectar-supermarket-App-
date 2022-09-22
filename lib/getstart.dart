import 'package:flutter/material.dart';
import 'package:nectar/login.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  void navigateToNextScreen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("images/register2.jfif"),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.srcOver),
          ),
        ),
        child: Padding(
          padding:const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/carrot1.png",
                width: 80.0,
                height: 80.0,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                  ),
                  child: Text(
                    "\t\tWelcome\nto our store",
                  ),
                ),
              ),
              const DefaultTextStyle(
                  style: TextStyle(color: Colors.white70, fontSize: 16.0),
                  child: Text("Get your groceries in as fast as one hour")),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 50.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: MaterialButton(
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            navigateToNextScreen(context);
                          })),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

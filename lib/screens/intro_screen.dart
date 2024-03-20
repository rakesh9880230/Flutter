import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/widgets/constants.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Spacer(),
            Image.asset("assets/cloud-rain-sun.png"),
            const Spacer(
              flex: 4,
            ),
            const Text.rich(
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(text: "Weather"),
                  TextSpan(
                      text: "News \n& Feed",
                      style: TextStyle(color: kprimaryColor))
                ],
              ),
            ),
            const Spacer(),
            const Text(
              "It is important to take care of the patient, to be followed by the patient, but it will happen at such a time that there is a lot of work and pain.",
              style: TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    )),
                style: ElevatedButton.styleFrom(
                    backgroundColor: kprimaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: const Text(
                  "Get start",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

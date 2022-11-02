import 'package:cofi/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/images/kopi.png"),
            Container(
              margin: const EdgeInsets.only(top: 430),
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sweet & \n Naise Coffee",
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Naise Coffee can change The atmosphere in the morning",
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 55,
                    width: 260,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/detail-screen");
                      },
                      child: Text(
                        "ORDER NOW",
                        style: buttonTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

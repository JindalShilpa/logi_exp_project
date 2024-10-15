import 'package:flutter/material.dart';
import 'package:logistics_express/customtextfield.dart';
import 'package:logistics_express/header.dart';

import 'Theme/theme.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() {
    return _VerifyEmailState();
  }
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Header(
                currentLogo: 'logo',
                imageSize: 110,
                text: 'Verifying... Email',
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            // horizontal: 0,
                            vertical: 5,
                          ),
                        ),
                        const SizedBox(height: 15),
                        CustomTextField(
                          hintText: 'Enter OTP',
                          label: 'OTP',
                          icon: Icon(
                            Icons.mobile_friendly,
                            color: kColorScheme.primary,
                            size: 32,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Verify',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        CustomTextField(
                          hintText: 'Enter Password',
                          label: 'Password',
                          icon: Icon(
                            Icons.fingerprint_rounded,
                            color: kColorScheme.primary,
                            size: 32,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(height: 15),
                        CustomTextField(
                          hintText: 'Confirm Password',
                          label: 'Confirm Password',
                          icon: Icon(
                            Icons.password,
                            color: kColorScheme.primary,
                            size: 32,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toutousotre_project/src/constants.dart';
import 'package:toutousotre_project/src/generated/assets.dart';
import 'package:toutousotre_project/src/widget/views/details_product_widget.dart';

import '../widget/textfield_widget.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: SafeArea(
              top: false,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Image.asset(Assets.imagesImg),
                    Positioned(
                      top: 370,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        //height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(kDefaultPadding * 1.2),
                              topRight: Radius.circular(kDefaultPadding * 1.2)),
                          color: Color.fromARGB(255, 255, 255, 255),
                          //color: Colors.white
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 35, vertical: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("\nSign In",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.85),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              SearchBox(title: "Email"),
                              SizedBox(
                                height: 20,
                              ),
                              SearchBox(title: 'Password'),
                              SizedBox(
                                height: 40,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context, '/home');
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: kMainColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Text(
                                      'SIGN IN',
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

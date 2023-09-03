import 'package:flutter/material.dart';
import 'package:toutousotre_project/src/constants.dart';

class ThanksPage extends StatelessWidget {
  ThanksPage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 65,
          shadowColor: kPrimaryColor,
          backgroundColor: kPrimaryColor,
          toolbarOpacity: 1,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Text(
              "Thank You",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                width: double.infinity,
                child: ClipRect(
                  child: Image.asset(
                    "assets/thanks.jpg",
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  "Your Order in process",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 40),
                child: Text(
                  "La fiesta de la coorajistika es te pass in mein \n \t\t\t\t\t\t\tYa la fiesta se passa hier und da ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(35)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text(
                    "GO BACK HOME",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//partie widget SplashScreen
class AnimatedSplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

//temps de chargement du composant
  startTime() async {
    var _duration = new Duration(seconds: 6); //temps de chargement du composant
    return new Timer(_duration, navigationPage);
  }

//navigation vers le HomePage
  void navigationPage() {
    //Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
    Navigator.pop(context);
    Navigator.pushNamed(context, "/signIn");
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this,
        duration: new Duration(seconds: 4)); //temps d'animation du logo
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

//definition du widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: ClipRect(
                      child: Image.asset(
                    "assets/splash.jpg",
                    width: animation.value * 250,
                    height: animation.value * 710,
                    fit: BoxFit.cover,
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

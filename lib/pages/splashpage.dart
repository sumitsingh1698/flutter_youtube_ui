import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_assis/pages/homepage.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({Key key}) : super(key: key);

  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      // print('yo hey');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    });

    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.youtube,
              color: Colors.red,
              size: 80,
            )
          ],
        ),
      ),
    );
  }
}

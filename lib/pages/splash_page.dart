import 'package:flutter/material.dart';
import 'package:todos/pages/main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  pushToMainScreen(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MainPage(key: key),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    pushToMainScreen(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 150,
              color: Color(0xff30384c),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'To-Do App',
              style: TextStyle(
                  color: Color(0xff30384c),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

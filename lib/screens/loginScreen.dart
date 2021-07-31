import 'package:buyit/colors.dart';
import 'package:buyit/widgets/loginLabel.dart';
import 'package:flutter/material.dart';
import 'package:buyit/screens/discoverScreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen();

  void logedin(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return DiscoverScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Y,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset(
              "assets/images/buy.png",
              height: 120,
              width: 120,
            ),
            Text(
              "Buy it",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
                color: B,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            LoginLabel(Icon(Icons.mail), TextInputType.emailAddress, false),
            LoginLabel(Icon(Icons.lock), TextInputType.visiblePassword, true),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                onPressed: () => logedin(context),
                color: B,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: B,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                "I'm an admin",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cloned/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = true;
  bool _obscureText = true;

  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 35.0,
            ),
            Container(
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage('lib/asset/images/pngwing.com.png'),
                width: 200.0,
                height: 200.0,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('Login As A User',
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 20)),
              ],
              totalRepeatCount: 1,
            ),
            const SizedBox(
              height: 1.0,
            ),
            TextFormField(
              controller: emailTextEditingController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Email ID',
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Enter Your Email ID',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                fillColor: Color(0xffdae3f2),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 1.0),
            TextFormField(
              controller: passwordTextEditingController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: !_showPassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    _togglevisibility();
                  },
                  child: Icon(
                      _showPassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white),
                ),
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.white),
                hintText: 'Enter Your Password',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                fillColor: const Color(0xffdae3f2),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 9.0,
            ),
            SizedBox(
              width: 250,
              child: RaisedButton(
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
                color: Colors.yellow,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
              child: const Text(
                "Do Not have An Account? Register Here",
                style: TextStyle(color: Colors.white, letterSpacing: 0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

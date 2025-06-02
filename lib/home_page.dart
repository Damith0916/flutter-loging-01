import 'package:flutter/material.dart';
import 'package:loging_page/Animation/FadeAnimation.dart';
import 'package:loging_page/componets/text_filed.dart';

class HomePage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  width: 80,
                  height: 200,
                  left: 30,
                  child: FadeAnimation(
                    1,
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/light-1.png'),
                        ),
                      ),
                    ),
                    duration: Duration(milliseconds: 1200),
                  ),
                ),
                Positioned(
                  width: 80,
                  height: 150,
                  left: 180,
                  child: FadeAnimation(
                    1,
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/light-2.png'),
                        ),
                      ),
                    ),
                    duration: Duration(milliseconds: 1300),
                  ),
                ),
                Positioned(
                  width: 80,
                  top: 40,
                  height: 200,
                  right: 40,
                  child: FadeAnimation(
                    1,
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/clock.png'),
                        ),
                      ),
                    ),
                    duration: Duration(milliseconds: 1600),
                  ),
                ),
                Positioned(
                  child: FadeAnimation(
                    1,
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(milliseconds: 1800),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                FadeAnimation(
                  1,
                  Container(
                    child: TextFiled(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false,
                      labletext: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  duration: Duration(milliseconds: 1900),
                ),
                SizedBox(height: 20),
                FadeAnimation(
                  1,
                  Container(
                    child: TextFiled(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                      labletext: 'Password',
                      prefixIcon: Icon(Icons.password),
                    ),
                  ),
                  duration: Duration(milliseconds: 2000),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, .6),
                      ],
                    ),
                  ),
                  child: FadeAnimation(
                    1,
                    Container(
                      child: TextButton(
                        onPressed: () {
                          // Handle login action
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(milliseconds: 2000),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: FadeAnimation(
                    1,
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: () {
                          // Handle login action
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 163, 163, 163),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(milliseconds: 2000),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

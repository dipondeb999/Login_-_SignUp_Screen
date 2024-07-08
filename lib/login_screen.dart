import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget inputFile({label, obscureText = false}) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Login to your account',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Column(
                        children: [
                          inputFile(label: 'Email'),
                          inputFile(label: 'Password', obscureText: true),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        padding: const EdgeInsets.only(top: 3, left: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: const Border(
                            left: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: MaterialButton(
                            onPressed: () {},
                          height: 60,
                          minWidth: double.infinity,
                          elevation: 0,
                          color: const Color(0xff0095ff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        SizedBox(width: 5),
                        Text(
                            'Sign up',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 100),
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/background.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}

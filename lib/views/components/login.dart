import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff154C79),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/parking_system_logo.png',
                    fit: BoxFit.cover,
                    height: 230,
                    width: 180,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Username',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter a username',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter a password',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    height: 45,
                    width: 90,
                    child: const Center(
                      child: Text(
                        'Login',
                        style:
                          TextStyle(fontSize: 20, color: Color(0xff154C79)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dont have an account?',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(const RegisterScreen());
                      },
                      child: const Text(
                      'register',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

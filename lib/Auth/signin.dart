import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_app/home/bottomnavigationbar.dart';

import '../items/homescreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;
  bool isLoading = false;
  TextEditingController _password = TextEditingController();
  TextEditingController _emailField = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/or.jpeg',
                ),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                  child: Container(
                    height: 430,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 30, 10, 0),
                              child: TextFormField(
                                  controller: _emailField,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        size: 20,
                                      ),
                                      focusColor: Colors.orange,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.orange)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 190, 61, 61))),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade300)),
                                      hintText: 'Email',
                                      labelStyle: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                      hoverColor: Color(0xffBA422D)),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "please enter your email";
                                    }
                                    return null;
                                  },
                                  onSaved: (name) {}),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                              child: TextFormField(
                                  controller: _password,
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      prefixIcon: const Icon(
                                        Icons.lock,
                                        size: 20,
                                      ),
                                      focusColor: Colors.orange,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.orange)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade300)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade300)),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isObscure = !_isObscure;
                                          });
                                        },
                                        icon: Icon(
                                          _isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      hintText: 'Password',
                                      labelStyle: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                      hoverColor:
                                          Color.fromARGB(255, 150, 16, 255)),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "please enter your password";
                                    }
                                    return null;
                                  },
                                  onSaved: (name) {}),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Align(
                              alignment: Alignment(0.2, 1.0),
                              child: SizedBox(
                                height: 60,
                                width: 300,
                                child: ElevatedButton(
                                  child: isLoading
                                      ? CircularProgressIndicator(
                                          color: Colors.white,
                                        )
                                      : Text(
                                          'Login',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                  onPressed: () {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    Future.delayed(Duration(seconds: 5), () {
                                      setState(() {
                                        isLoading = false;
                                      });
                                    });
                                    if (_formkey.currentState!.validate()) {
                                      Get.to(() => BottomNavigation());
                                    } else {
                                      Get.snackbar(
                                          "unsuccessful", "enter valid inputs",
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.red);
                                    }
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color.fromARGB(
                                                255, 255, 189, 90)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        // Change your radius here
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

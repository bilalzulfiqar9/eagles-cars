import 'package:flutter/material.dart';
import 'package:house/auth/sign_in.dart';
import 'package:house/auth/success_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: Colors.black,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.only(
        topRight: Radius.elliptical(25, 25),
        bottomLeft: Radius.elliptical(25, 25),
        bottomRight: Radius.circular(4),
        topLeft: Radius.circular(4),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,

        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed: () {}, icon: BackButton()),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                      child: Image.asset('assets/Group 34202.PNG'),
                    ),

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            'Eagles',
                            style: TextStyle(
                              color: Color.fromRGBO(66, 65, 65, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),

                          Text(
                            ' Cars',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,

                        controller: _fullNameController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Full Name',

                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: const Icon(Icons.person),
                          prefixIconColor: Colors.black,
                          focusedBorder: border,
                          enabledBorder: border,
                          errorBorder: border,
                        focusedErrorBorder: border,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Full name required';
                          } else if (value.length < 3) {
                            return 'Name must be at least 3 characters';
                          }
                          return null;
                        },
                      ),
                    ),

                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,

                        controller: _emailPhoneController,
                        // autovalidateMode: AutovalidateMode.onUserInteraction,
                        
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email Or Phone Number',
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: const Icon(Icons.email_sharp),
                          prefixIconColor: Colors.black,
                          focusedBorder: border,
                          enabledBorder: border,
                          errorBorder: border,
                        focusedErrorBorder: border,
                        ),
                        
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your Email or Phone Number";
                          } else if (!RegExp(r'1111').hasMatch(value) &&
                              !RegExp(r'1111').hasMatch(value)) {
                            return "Enter a valid Email or Phone number";
                          }
                          return null;
                        },
                      ),
                    ),

                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,

                        controller: _passwordController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: const Icon(Icons.lock),
                          prefixIconColor: Colors.black,
                          focusedBorder: border,
                          enabledBorder: border,
                          errorBorder: border,
                        focusedErrorBorder: border,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter your password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 digits';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,

                        controller: _confirmPasswordController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter Your Confirm Password',
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: const Icon(Icons.lock),
                          prefixIconColor: Colors.black,
                          focusedBorder: border,
                          enabledBorder: border,
                          errorBorder: border,
                        focusedErrorBorder: border,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Pleasew confirm your password';
                          } else if (value != _passwordController.text) {
                            return 'Password do not match';
                          }
                          return null;
                        },
                      ),
                    ),

                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SuccessScreen(),
                              ),
                            );
                          }
                        },

                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(25, 25),
                              bottomLeft: Radius.elliptical(25, 25),
                              bottomRight: Radius.circular(4),
                              topLeft: Radius.circular(4),
                            ),
                          ),
                        ),
                        child: Text('Sign In'),
                      ),
                    ),

                    Text('or'),

                    SizedBox(
                      height: 40,
                      child: Image.asset('assets/Frame 2147225502.png'),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text('Already have an account?'),

                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
                          },
                          child: Text('Sign In'),
                        ),
                      ],
                    ),

                    SingleChildScrollView(scrollDirection: Axis.vertical),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

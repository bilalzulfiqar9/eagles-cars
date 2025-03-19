import 'package:flutter/material.dart';
import 'package:house/auth/success_screen.dart';
import 'email_screen.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _validateEmailOrPhone(String value) {
    bool isEmail = RegExp(r"@gmail.com").hasMatch(value);

    bool isPhone = RegExp(r'11111111').hasMatch(value);

    return isEmail || isPhone;
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1.0,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [IconButton(onPressed: () {}, icon: BackButton())],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/Group 34202.PNG'),
                  ),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        SizedBox(height: 32),
                        Text(
                          'Eagles',
                          style: TextStyle(
                            color: Color.fromRGBO(66, 65, 65, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 32),
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
                          'Sign In',
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

                      controller: _emailPhoneController,
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
                          return "Please enter your Email or Phone number";
                        } else if (!_validateEmailOrPhone(value)) {
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
                      style: TextStyle(color: Colors.black,),
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

                      obscureText: true,  
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null; // Valid input
                      },
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmailScreen()),
                      );
                    },
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 10),
                  Text('or'),
                  SizedBox(height: 10),
                  Image.asset('assets/Frame 2147225502.png'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(' Don`t have an account?'),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text('Sign In'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

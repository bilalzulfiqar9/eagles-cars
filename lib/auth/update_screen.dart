import 'package:flutter/material.dart';
import 'package:house/auth/success_screen.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
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
                              fontSize: 35,
                            ),
                          ),

                          Text(
                            ' Cars',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Update Password',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'Look Like Readable English. Many Desktop Publishing Packages ',
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,

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
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 digits';
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  autovalidateMode: AutovalidateMode.onUserInteraction,

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
                  controller: _confirmPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter confirm password';
                    } else if (value != _passwordController.text) {
                      return 'Password do not matrch';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 50),
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
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

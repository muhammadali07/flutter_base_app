import 'package:app/config/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LoginSignupScreen extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 300,
              width: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/bg.jpeg"), fit: BoxFit.fill),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                color: Color.fromARGB(255, 60, 158, 119).withOpacity(.85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Welcome to SIKAT, ",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.yellow[700],
                          ),
                          children: [
                            TextSpan(
                              text: "Kinanti",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[700],
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Signup to Continue",
                      style: TextStyle(letterSpacing: 2, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          //Main Container for login and Signup
          Positioned(
            top: 200,
            child: Container(
              height: 380,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: !isSignupScreen
                                      ? Pallete.activeColor
                                      : Pallete.textColor1),
                            ),
                            if (isSignupScreen)
                              Container(
                                height: 2,
                                width: 55,
                                // color: Colors.orange,
                              )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? Pallete.activeColor
                                      : Pallete.textColor1),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        buildTextField(MaterialCommunityIcons.account_outline,
                            "User name", false, false),
                        buildTextField(MaterialCommunityIcons.email_outline,
                            "email", false, false),
                        buildTextField(MaterialCommunityIcons.lock_outline,
                            "password", false, false),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = true;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          color: isMale
                                              ? Pallete.textColor2
                                              : Colors.transparent,
                                          border: Border.all(
                                            width: 1,
                                            color: isMale
                                                ? Colors.transparent
                                                : Pallete.textColor1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(
                                        MaterialCommunityIcons.account_outline,
                                        color: isMale
                                            ? Colors.white
                                            : Pallete.iconColor,
                                      ),
                                    ),
                                    Text(
                                      "Male",
                                      style:
                                          TextStyle(color: Pallete.textColor1),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = false;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          color: isMale
                                              ? Colors.transparent
                                              : Pallete.textColor2,
                                          border: Border.all(
                                            width: 1,
                                            color: isMale
                                                ? Pallete.textColor1
                                                : Colors.transparent,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(
                                        MaterialCommunityIcons.account_outline,
                                        color: isMale
                                            ? Pallete.iconColor
                                            : Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Female",
                                      style:
                                          TextStyle(color: Pallete.textColor1),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(top: 20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "By pressing 'Submit' you agree to our",
                                style: TextStyle(color: Pallete.textColor2),
                                children: [
                                  TextSpan(
                                    text: "terms & conditions",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          //Trick
        ],
      ),
    );
  }

  Widget buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Pallete.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Pallete.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Pallete.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Pallete.textColor1),
        ),
      ),
    );
  }
}

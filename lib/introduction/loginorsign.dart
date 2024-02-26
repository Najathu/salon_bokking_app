import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salonbokking_app/Login/login.dart';
import 'package:salonbokking_app/Login/reg/reg.dart';

class logorsignin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
          child: Stack(alignment: Alignment.center, children: <Widget>[
            Image.asset(
              'assets/images/hair.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 730.0,
              left: 16.0,
              right: 16.0,
              child: Container(
                child: Center(
                  child: Text(
                    'Book a Visit Easy & Fast ',
                    style: GoogleFonts.rajdhani(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35.0,
                    ),
                  ),
                ),
              ),
            ),
            // Buttons
            Positioned(
                bottom: 16.0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 85,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black.withOpacity(0.5),
                            backgroundColor: Colors.pink,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    // Add spacing between buttons
                    SizedBox(
                      height: 50,
                      width: 85,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registrationpage()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black.withOpacity(0.5),
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )),
          ]),
        )));
  }
}

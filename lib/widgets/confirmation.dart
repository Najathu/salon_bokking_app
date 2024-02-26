import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:salonbokking_app/Screens/homepage.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Object? args = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Lottie.asset("assets/lottie/tick.json",
              width: 200,
                height: 200,
                fit: BoxFit.cover
              ),

              SizedBox(height: 20),
              Text(
                'Appointment booked for: 27-02-2024 at 07:35PM'
                    // '${args != null ? DateFormat('yyyy-MM-dd').format((args as Map<String,
                    // dynamic>)['date'] as DateTime) : 'No date'}'
                  ,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                },
                child: Text('Back to Homepage'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

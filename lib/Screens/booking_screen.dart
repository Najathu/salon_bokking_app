// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
//
//
// class BookingPage extends StatefulWidget {
//   @override
//   _BookingPageState createState() => _BookingPageState();
// }
//
// class _BookingPageState extends State<BookingPage> {
//   DateTime _selectedDate = DateTime.now();
//   TimeOfDay _selectedTime = TimeOfDay.now();
//   bool _isBooked = false;
//
//
//
//
//
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime.now(),
//       lastDate: DateTime.now().add(Duration(days: 7)),
//     );
//     if (picked != null && picked != _selectedDate) {
//       setState(() {
//         _selectedDate = picked;
//       });
//     }
//   }
//
//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );
//     if (picked != null && picked != _selectedTime) {
//       setState(() {
//         _selectedTime = picked;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Booking Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Selected Date: ${_selectedDate != null ? DateFormat('yyyy-MM-dd').format(_selectedDate) : 'No date selected'}',
//             ),
//             ElevatedButton(
//               onPressed: () => _selectDate(context),
//               child: Text('Select Date'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Selected Time: ${_selectedTime != null ? _selectedTime.format(context) : 'No time selected'}',
//             ),
//             ElevatedButton(
//               onPressed: () => _selectTime(context),
//               child: Text('Select Time'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 if (_selectedDate != null && _selectedTime != null) {
//                   // Perform booking logic here
//                   setState(() {
//                     _isBooked = true;
//                   });
//                   print('Booking successful for ${DateFormat('yyyy-MM-dd').format(_selectedDate)} at ${_selectedTime.format(context)}');
//                 } else {
//                   print('Please select both date and time.');
//                 }
//               },
//               child: _isBooked ? Icon(Icons.check) : Text('Book'),
//               style: _isBooked ? ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)) : null,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:salonbokking_app/widgets/confirmation.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 7)),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff4E295B),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 200,
                        ),
                        Text(
                          'Selected Date: ${_selectedDate != null ? DateFormat('yyyy-MM-dd').format(_selectedDate) : 'No date selected'}',
                          style: TextStyle(fontSize: 20),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white12),
                          onPressed: () => _selectDate(context),
                          child: Text(
                            'Select Date',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 60),
                        Text(
                          'Selected Time: ${_selectedTime != null ? _selectedTime.format(context) : 'No time selected'}',
                          style: TextStyle(fontSize: 20),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white12),
                          onPressed: () => _selectTime(context),
                          child: Text(
                            'Select Time',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 80),
                        Container(
                          margin: EdgeInsets.all(60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80)),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ConfirmationPage()));
                            },
                            child: Text(
                              'Book',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(16)),
                              // Adjust padding as needed
                              minimumSize: MaterialStateProperty.all<Size>(Size(
                                  double.infinity,
                                  60)), // Adjust height as needed
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ));
  }
}

// class ConfirmationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final Object? args = ModalRoute.of(context)?.settings.arguments;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Booking Confirmation'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Appointment booked for: ${DateFormat('yyyy-MM-dd').format((args as Map<String, dynamic>)['date'] as DateTime)}'
//               ,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context); // Navigate back to the homepage
//               },
//               child: Text('Back to Homepage'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

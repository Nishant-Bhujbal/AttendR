import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Accept extends StatelessWidget {
  const Accept({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/accept.png'),
          SizedBox(height: 35.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
            child: Text('Your Attendance is succesfully submitted',
            style: TextStyle(
              fontSize: 28,
              color: Colors.blueGrey[400]
              
            ),
            ),
          ),
          
        ],
      ),
    );
  }
}
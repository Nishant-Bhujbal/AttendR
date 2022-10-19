import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController rollNo = new TextEditingController();
    TextEditingController password = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Registration Number',
                ),
              SizedBox(height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: rollNo,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          constraints: BoxConstraints(
                            maxHeight: 50.0,
                            maxWidth: 20.0
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                              hintText: "REGISTRATION NUMBER",
                              hintStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.blueGrey[200],
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  Text('Password'),
                  SizedBox(height: 12.0,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: password,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              constraints: BoxConstraints(
                                maxHeight: 50.0,
                                maxWidth: 20.0
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                                  hintText: "PASSWORD",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.blueGrey[200],
                                    ),
                                  
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('SignUp'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[400],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class terms extends StatefulWidget {
  const terms({Key? key}) : super(key: key);

  @override
  State<terms> createState() => _termsState();
}

class _termsState extends State<terms> {
  // By defaut, the checkbox is unchecked and "agree" is "false"
  bool agree = false;

  // This function is triggered when the button is clicked
  void _doSomething() {
    // Do something
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              width: 700,
              height: 700,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/image/fdsaplogo.png'),
                fit: BoxFit.cover,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: AlertDialog(
                      title: const Text('TERMS & CONDITION'),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Material(
                            child: Checkbox(
                              value: agree,
                              onChanged: (value) {
                                setState(() {
                                  agree = value ?? false;
                                });
                              },
                            ),
                          ),
                          Text('I have read and accept terms and conditions'),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: agree ? _doSomething : null,
                          child: const Text('CONTINUE'),
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Material(
                  //       child: Checkbox(
                  //         value: agree,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             agree = value ?? false;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     const Text(
                  //       'I have read and accept terms and conditions',
                  //       overflow: TextOverflow.ellipsis,
                  //     )
                  //   ],
                  // ),
                  // ElevatedButton(
                  //     onPressed: agree ? _doSomething : null,
                  //     child: const Text('Continue'),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

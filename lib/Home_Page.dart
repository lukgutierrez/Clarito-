import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedLoadingButton(
            resetDuration: Duration(seconds: 5),
            resetAfterDuration: true,
            child: Text('GREAT', style: TextStyle(color: Colors.white)),
            controller: _btnController,
            onPressed: () {
              _BalanceConsult();
            },
          )
        ],
      ),
    );
  }
}

_BalanceConsult() async {
  String number = "*611*1*1#";
  await FlutterPhoneDirectCaller.callNumber(number);
}

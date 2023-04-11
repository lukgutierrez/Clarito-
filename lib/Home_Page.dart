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
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RoundedLoadingButton(
            color: Colors.red,
            resetDuration: Duration(seconds: 5),
            resetAfterDuration: true,
            child:
                Text('CONSULTAR SALDO', style: TextStyle(color: Colors.white)),
            controller: _btnController,
            onPressed: () {
              _BalanceConsult();
            },
          ),
          RoundedLoadingButton(
            color: Colors.red,
            resetDuration: Duration(seconds: 5),
            resetAfterDuration: true,
            child:
                Text('CONSULTAR MEGAS', style: TextStyle(color: Colors.white)),
            controller: _btnController,
            onPressed: () {
              _BalanceConsult1();
            },
          ),
          RoundedLoadingButton(
            color: Colors.red,
            resetDuration: Duration(seconds: 5),
            resetAfterDuration: true,
            child: Text('REALIZAR PRESTAMO',
                style: TextStyle(color: Colors.white)),
            controller: _btnController,
            onPressed: () {
              _BalanceConsult2();
            },
          ),
        ],
      ),
    );
  }
}

_BalanceConsult() async {
  String number = "*611*1*1#";
  await FlutterPhoneDirectCaller.callNumber(number);
}

_BalanceConsult1() async {
  String number = "*611*1*1*1#";
  await FlutterPhoneDirectCaller.callNumber(number);
}

_BalanceConsult2() async {
  String number = "*611*3#";
  await FlutterPhoneDirectCaller.callNumber(number);
}

_BalanceConsult3() async {
  String number = "*611*1*1#";
  await FlutterPhoneDirectCaller.callNumber(number);
}

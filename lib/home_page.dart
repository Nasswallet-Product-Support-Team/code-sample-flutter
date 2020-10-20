import 'package:flutter/material.dart';
import 'package:flutter_test_api/payment_gateway.dart';
class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PaymentGateway(title: 'Flutter Payment Demo')),
            );
          },
          child: const Text('Make Payment', style: TextStyle(fontSize: 15)),
        ),
      ),
    );
  }
}
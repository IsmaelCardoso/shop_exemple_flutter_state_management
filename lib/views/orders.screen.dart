import 'package:flutter/material.dart';
import '../widgets/app_drawer.widget.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Orders"),
      ),
      drawer: AppDrawerWidget(),
    );
  }
}

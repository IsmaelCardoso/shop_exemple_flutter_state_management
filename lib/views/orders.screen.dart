import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/orders.provider.dart';
import '../widgets/app_drawer.widget.dart';
import '../widgets/order.widget.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OrdersProvider orders = Provider.of<OrdersProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("My Orders"),
      ),
      drawer: AppDrawerWidget(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (context, index) => OrderWidget(orders.items[index]),
      ),
    );
  }
}

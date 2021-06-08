import 'package:flutter/material.dart';
import '../models/product.model.dart';
import '../providers/counter.provider.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context).settings.arguments as ProductModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Column(
        children: [
          Text(
            CounterProvider.of(context).state.value.toString(),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  CounterProvider.of(context).state.inc();
                  // context
                  //     .dependOnInheritedWidgetOfExactType<CounterProvider>()
                  //     .state
                  //     .inc(); //Tambem podemos fazer desta forma!
                });
                print(CounterProvider.of(context).state.value);
              },
              child: Text('+')),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingCartScreen(),
    );
  }
}

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  int _itemCount = 0;
  final double _unitPrice = 10.0;
  String _itemName = "Item";

  void _incrementItemCount() {
    setState(() {
      _itemCount++;
      if (_itemCount == 5) {
        _showDialog();
      }
    });
  }

  void _decrementItemCount() {
    if (_itemCount > 0) {
      setState(() {
        _itemCount--;
      });
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert'),
        content: Text('You have added 5 $_itemName on your bag!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Congratulations! You have checked out successfully.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double totalAmount = _itemCount * _unitPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$_itemName Count: $_itemCount',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  onPressed: _decrementItemCount,
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: _incrementItemCount,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Total Amount: \$${totalAmount.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: _showSnackBar,
                child: Text('CHECK OUT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

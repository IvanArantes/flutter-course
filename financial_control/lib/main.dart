import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Control',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '1',
      title: 'Jogo',
      amount: 100.00,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Tabuleiro',
      amount: 60.00,
      dateTime: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial App'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            elevation: 5,
            child: Container(
                child: Text('CHART WILL BE HERE!'),
                width: double.infinity,
                color: Colors.grey),
          ),
          Column(
            children: transactions.map((tx) {
              return TransactionWidget(tx);
            }).toList(),
          )
        ],
      ),
    );
  }
}

class TransactionWidget extends StatelessWidget {
  final Transaction transaction;

  TransactionWidget(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple,
                width: 2,
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              transaction.amount.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                transaction.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                transaction.dateTime.toString(),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

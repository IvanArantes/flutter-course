import '../models/transaction.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _transactions = [
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

  void _addNewTransaction(String titleInput, double amountInput) {
    final newTx = Transaction(
        title: titleInput,
        amount: amountInput,
        dateTime: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}

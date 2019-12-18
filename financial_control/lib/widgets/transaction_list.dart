import 'package:financial_control/widgets/transaction_item.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: SingleChildScrollView(
              child: Column(
                children: transactions.map((tx) {
                  return TransactionItem(tx);
                }).toList(),
              ),
      ),
    );
  }
}
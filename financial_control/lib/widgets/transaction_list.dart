import 'package:financial_control/widgets/transaction_item.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final Function deleteTransaction;
  final List<Transaction> transactions;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? LayoutBuilder(builder: (ctx, constraints) {
              return Column(
                children: <Widget>[
                  Text(
                    'No transactions added yet!',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/bear.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              );
            })
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return TransactionItem(
                    transactions[index], this.deleteTransaction);
              },
              itemCount: transactions.length,
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.teal[300],
                  width: 2,
                )),
                padding: EdgeInsets.all(20),
                child: Text(
                  '\$ ${tx.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.teal[300],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title,
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
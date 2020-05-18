import 'dart:ffi';

import 'package:flutter/material.dart';
import './TransactionList.dart';
import '../Model/Transaction.dart';

class TransactionView extends StatefulWidget {
  @override
  TransactionViewState createState() => TransactionViewState();
}
class TransactionViewState extends State<TransactionView> {
final List <Transaction> transactionList = [Transaction(id:"1",name:"Glocery store",amount:89.0,dateTime: DateTime.now()),Transaction(id:"2",name:"Glocery store2",amount:90.0,dateTime: DateTime.now())];
  void _addTransactionTolist( String title, double amount) {
    final newTx = Transaction(id: "deqweqw", name: title, amount: amount, dateTime: DateTime.now());
    setState(() {
          transactionList.add(newTx);
       });
    }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
       TransactionList(this.transactionList),
      ],),
    );
  }
}
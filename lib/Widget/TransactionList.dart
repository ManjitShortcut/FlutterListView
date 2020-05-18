import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import '../Model/Transaction.dart';
class TransactionList extends StatelessWidget {

  final List <Transaction> transactionList;

   TransactionList(this.transactionList);

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        height: 300,
        // list view is used with fixed items mens if you know the total static list then 
           // user Listview with chiredn but it will take time to laod everything
           // for list maximum to 4 or 5 use list view with chiren
           //To make list view dynmic use listView builder which is only allocation memory 
           //only visible cell 
        //
        child: ListView.builder (
          itemCount: transactionList.length,
          itemBuilder:(ct, index){
          
            return Card(
              color:Theme.of(context).primaryColor,
              child: Row(
               children: <Widget>[
                 Container(
                   margin:EdgeInsets.all(10),
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(border: Border.all(
                     color: Colors.yellow, width: 3
                   ),),
                   child: Text("\$:${transactionList[index].amount.toString()}",
                   style:Theme.of(context).textTheme.title, // global theme setup by application at main file
                   ),
                 ),
                Column( 
                 crossAxisAlignment: CrossAxisAlignment.start, // by default 
                  // cross axis is center 
                  children: <Widget>[
                  Text(transactionList[index].name, 
                  style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 15,
                    color:Colors.red,
                   ),),
                  Text(DateFormat().format(transactionList[index].dateTime)),
                  // https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html date format
                ],),
               ],
              ),
            );
          } 
         ),
      );
  }
}
import 'package:flutter/material.dart';
import './Transaction.dart';
import "package:intl/intl.dart";

void main() => runApp(ListViewApp());
class ListViewApp extends StatelessWidget {

final List <Transaction> transactionList = [Transaction(id:"1",name:"Glocery store",amount:89.0,dateTime: DateTime.now()),Transaction(id:"2",name:"Glocery store2",amount:90.0,dateTime: DateTime.now())];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: 
    Scaffold(
      appBar:AppBar(title:Text("ListView"),),
      body:Column( // colom has two axis one is main axis and another is 
                   //  main axis is to top to bottom and cross axis is from right to left
                   // But in case of row the the main axis is left to right and cross axis is right to left
                        
        mainAxisAlignment: MainAxisAlignment.center, // alignemne of column
        crossAxisAlignment: CrossAxisAlignment.center, // all the child element start from 
       //crossAxisAlignment: CrossAxisAlignment.strectch // it will take full with of
       // the parent                                            //  right 
        children: <Widget>[
          Container(
            width:double.infinity,
            child: Card (
             child: Text("Chat view"),
             color: Colors.brown,
          ),
          ),
       Column(children: 
       transactionList.map((tl){
         return  Card(
            color:Colors.green,
            child: Row(
             children: <Widget>[
               Container(
                 margin:EdgeInsets.all(10),
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(border: Border.all(
                   color: Colors.yellow, width: 3
                 ),),
                 child: Text("\$:${tl.amount.toString()}",
                 style:TextStyle (
                   fontWeight: FontWeight.bold,
                   fontSize:20,
                   color: Colors.black,
                 ),
                 ),
               ),
              Column( 
               crossAxisAlignment: CrossAxisAlignment.start, // by default 
                // cross axis is center 
                children: <Widget>[
                Text(tl.name, 
                style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 15,
                  color:Colors.red,
                 ),),
                Text(DateFormat().format(tl.dateTime)),
                // https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html date format
              ],),
             ],
            ),
          );
       }).toList()
       ),
        ],
      ),

      ),
      
    );
  }
}
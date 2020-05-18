import 'package:flutter/material.dart';
import './Widget/TransactionWiget.dart';
import './Widget/addNewTransaction.dart';

void main() => runApp(ListViewApp());

class ListViewApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
     return MaterialApp(
     title: "My app",
     theme: ThemeData(primaryColor: 
     Colors.yellowAccent,
     accentColor: Colors.amber,
     fontFamily: "Quicksand", // global font through out the app
     textTheme: ThemeData.light().textTheme.copyWith(
                 title:TextStyle(fontFamily: "OpenSans",fontSize:30),),
      appBarTheme: AppBarTheme(color: Colors.red, textTheme: ThemeData.light().textTheme.copyWith(title: 
      TextStyle(fontFamily:"OpenSans",  // set all navigation bar 
                fontSize: 20, 
                fontWeight: FontWeight.bold),),),  


     ),
     
     home: HomePage(),
     // used to for lot of default configuration of the app. like app bar theme , navigation bar theme
     // bottom navigation bar theme
     );
  }
} 
class HomePage extends StatelessWidget {
  static const String _message =
      'This is the modal bottom sheet. Click anywhere to dismiss.';

    void _addTransactionTolist( String title, double amount) {
    // final newTx = Transaction(id: "deqweqw", name: title, amount: amount, dateTime: DateTime.now());
    // setState(() {
    //       transactionList.add(newTx);
    //    });
    }
     void _showModalBottomSheet(BuildContext cotcntext) =>
      showModalBottomSheet<void>(
        context: cotcntext,
        builder: (BuildContext context){
         return Container(child:
         AddnewTransaction(_addTransactionTolist),
         );
        },
      );
      //Navigator.of(context).pop(); is used to manually dismiss bottom sheet
  @override
  Widget build(BuildContext context) {
            print(context);
    return 
    Scaffold(
      appBar:AppBar(title:Text("MyApp"),actions: <Widget>[
        IconButton(icon: Icon(Icons.add), onPressed:() => _showModalBottomSheet(context),)
      ],),
      // adding single child scroll view// you can add scroll view to a 
      // if the heght is predefine // so yo can add single child view to a 
      // container or body
      body:Column( // colom has two axis one is main axis and another is 
                   //  main axis is to top to bottom and cross axis is from right to left
                   // But in case of row the the main axis is left to right and cross axis is right to left               
        mainAxisAlignment: MainAxisAlignment.start, // alignemne of column
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
         TransactionView(),
        ],
      ),
      // floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
      // floatingActionButton:FloatingActionButton(
      //  child: Icon(Icons.add),
      //   onPressed: (){

      //   },),
      );
  }
}
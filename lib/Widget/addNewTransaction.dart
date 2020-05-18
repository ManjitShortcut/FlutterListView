import 'package:flutter/material.dart';

class AddnewTransaction extends StatefulWidget {
final Function addNew; 
AddnewTransaction(this.addNew);

  @override
  _AddnewTransactionState createState() => _AddnewTransactionState();
}

class _AddnewTransactionState extends State<AddnewTransaction> {
  String expensesName; 
  String expensesAmount; 
final expenseNameController = TextEditingController();

final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return 
       Card ( elevation: 5,
          child:Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.end,
              children: <Widget>[
                TextField(decoration: 
                InputDecoration(labelText:"enter Expenses name"),
                controller: this.expenseNameController,
                onChanged:(val){
                  this.expensesName = val;
                } ,),
                TextField(decoration: 
                InputDecoration(labelText:"Enter Price",),
                controller: this.amountController,
                onChanged:(value)=> this.expensesAmount=value,),
                Container(
                  height: 50,
                  child: FlatButton(child: 
                  Text("Save", style: TextStyle(color: Colors.red),)
                  ,onPressed: (){
                    print(this.amountController.text);
                    widget.addNew(this.expenseNameController.text,double.parse(amountController.text));
                    Navigator.of(context).pop(); // dismiss bottom navigation
                  },
                  ),
                ),
              ],
            ),
          )
           );
    
  }
}
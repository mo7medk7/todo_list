import 'package:flutter/material.dart';
import 'package:todo/my_theme.dart';

class EditTask extends StatelessWidget {
  static const String routeName  = "edit task" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo List",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),

      body: Container(
        margin: EdgeInsets.all(100),
        decoration: BoxDecoration(
          color: MyTheme.whiteColor
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("Edit Task",
                style: Theme.of(context).textTheme.titleMedium),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text("Title" , style : Theme.of(context).textTheme.titleMedium )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: Text("Desc" ,style : Theme.of(context).textTheme.titleMedium )
                  ),
                ),
              ) ,
              
              Padding(
                  padding: EdgeInsets.all(15),
                  child: ElevatedButton(onPressed: (){}, child: Text("Save Changes",style : Theme.of(context).textTheme.titleMedium,)))
            ],
          ),
        ),
      ),
    );
  }
}

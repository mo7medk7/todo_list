import 'package:flutter/material.dart';
import 'package:todo/settings/Theme.dart';
import 'package:todo/settings/language.dart';

class SettingsTab extends StatefulWidget {


  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Padding(
            padding: EdgeInsets.all(20),
            child: Text("Language" , style: Theme.of(context).textTheme.titleMedium,)),
        Padding(
          padding: EdgeInsets.all(20),
          child: InkWell(
            onTap: (){
              ChangeLanguage();
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text("English" , style: Theme.of(context).textTheme.titleMedium,
                 ),
                 Icon(Icons.arrow_drop_down)
               ],
              ),
            ),
          ),
        ),

        Padding(
            padding: EdgeInsets.all(20),
            child: Text("Theme" , style: Theme.of(context).textTheme.titleMedium,)),
        Padding(
          padding: EdgeInsets.all(20),
          child: InkWell(
            onTap: (){

              ChangeTheme();
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Light" , style: Theme.of(context).textTheme.titleMedium,),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
        )
      ],


    );
  }

  void ChangeLanguage() {

    showModalBottomSheet(context: context, builder: (context) => Language() );
  }

  void ChangeTheme() {
    showModalBottomSheet(context: context, builder: (context) => CTheme());
  }

}

import 'package:flutter/material.dart';
import 'package:todo/list_tab/ShowAddTaskModelSheet.dart';
import 'package:todo/list_tab/list_tab.dart';
import 'package:todo/my_theme.dart';
import 'package:todo/settings/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.app_title,
        style: Theme.of(context).textTheme.titleLarge,
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,


        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex = index ;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list ) ,
              label: AppLocalizations.of(context)!.task_list
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.settings ) ,
                label: AppLocalizations.of(context)!.settings
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: MyTheme.whiteColor ,
            width: 5
          )
        ) ,
        onPressed: (){
          AddTaskModelSheet();

        },
        child: Icon(Icons.add),

      ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: tabs[selectedIndex],
    );


  }
  List<Widget> tabs = [
    ListTab() ,
    SettingsTab()
  ] ;

  void AddTaskModelSheet() {

    showModalBottomSheet(context: context, builder: (context) => ShowAddTaskModelSheet());
  }

}

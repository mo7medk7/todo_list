import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_config_provider.dart';



class Language extends StatefulWidget {
  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
   var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage("en");

              },
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "English",
                    style: Theme.of(context).textTheme.titleMedium,
                  ))),
          InkWell(
              onTap: () {
                provider.changeLanguage("ar");
              },
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Arabic",
                    style: Theme.of(context).textTheme.titleMedium,
                  ))),
        ],
      ),
    );
  }
}

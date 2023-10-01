import 'package:flutter/material.dart';

class CTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Light",
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Dark",
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
        ],
      ),
    );
  }
}

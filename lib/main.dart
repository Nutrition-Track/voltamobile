import 'package:flutter/material.dart';
void main() => runApp(const SelectionContainerDisabledExampleApp());

class SelectionContainerDisabledExampleApp extends StatelessWidget {
  const SelectionContainerDisabledExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    var aspectratio = 16/9;
    var uielementpadding = 11.5;
    return Center(
      child: Container(
        color: Colors.blue[50],
        child: Center(
          child: Container(
            width: 400,
            height: 400 * aspectratio,
            alignment: Alignment.topLeft,
            color: Colors.blue[400],
            child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(uielementpadding),
                child: Container(
                  width: 380,
                  height: (400 * aspectratio) / 6,
                  color: Colors.blue[300],
                )
              ),
              Padding(
                padding: EdgeInsets.all(uielementpadding),
                child: Container(
                  width: 380,
                  height: (400 * aspectratio) / 6,
                  color: Colors.blue[300],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(uielementpadding),
                child: Container(
                  width: 380,
                  height: (400 * aspectratio) / 6,
                  color: Colors.blue[300],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(uielementpadding),
                child: Container(
                  width: 380,
                  height: (400 * aspectratio) / 6,
                  color: Colors.blue[300],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(uielementpadding),
                child: Container(
                  width: 380,
                  height: (400 * aspectratio) / 6,
                  color: Colors.blue[300],
                ),
              )
            ]
            )
          )
        )
      )
    );
  }
}
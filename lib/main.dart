import 'package:flutter/material.dart';
void main() => runApp(const SelectionContainerDisabledExampleApp());

class SelectionContainerDisabledExampleApp extends StatelessWidget {
  const SelectionContainerDisabledExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    const aspectratio = 16/9; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    const uielementpadding = 11.5; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    const screenwidth = 400.00; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    return Center(
      child: Container(
        color: Colors.blue[50],
        child: Center(
          child: Container(
            width: screenwidth,
            height: screenwidth * aspectratio,
            alignment: Alignment.topLeft,
            color: Colors.blue[400],
            child: Column(
            children: [ // list of boxes
              Row( // header row
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenwidth / 3,
                    height: 30,
                    color: Colors.red[200]
                  ),
                  Container(
                    width: screenwidth / 6,
                    height: 30,
                    color: Colors.red[400]
                  )
                ]
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
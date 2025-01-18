import 'package:flutter/material.dart';

void main() => runApp(const SelectionContainerDisabledExampleApp());

class SelectionContainerDisabledExampleApp extends StatelessWidget {
  const SelectionContainerDisabledExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    const aspectratio = 16 /
        9; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    const uielementpadding =
        11.5; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    const screenwidth =
        400.00; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    return Container(
        color: Colors.blue[50],
        child: Center(
            child: Container(
                width: screenwidth,
                height: screenwidth * aspectratio,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(children: [
                  // list of boxes
                  Padding(
                      padding: EdgeInsets.all(uielementpadding),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red[400],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          width: screenwidth,
                          height: 30,
                          child: Row(
                              // header row
                              textDirection: TextDirection
                                  .ltr, // this is required for the row to render properly
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Container(
                                      // left widget, user menu
                                      width: screenwidth / 3,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.red[200],
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                      // right widget, welcome text
                                      width: screenwidth / 6,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.red[200],
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      )),
                                ),
                              ]))),
                  Padding(
                    padding: EdgeInsets.all(uielementpadding),
                    child: Container(
                      // diet progress
                      width: 380,
                      height: (400 * aspectratio) / 6,
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(uielementpadding),
                      child: Container(
                          // food inputs
                          width: 380,
                          height: (400 * aspectratio) / 6,
                          decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                              textDirection: TextDirection.ltr, // left to right
                              children: [
                                Padding(
                                    // food inputs barcode
                                    padding: EdgeInsets.all(6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green[300],
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      width: screenwidth / 4,
                                    )),
                                Padding(
                                    // food inputs ai (center!)
                                    padding: EdgeInsets.all(6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green[300],
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      width: screenwidth / 4,
                                    )),
                                Padding(
                                    // food inputs manual
                                    padding: EdgeInsets.all(6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green[300],
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      width: screenwidth / 4,
                                    )),
                              ]))),
                  Padding(
                    // calendar
                    padding: EdgeInsets.all(uielementpadding),
                    child: Container(
                      width: 380,
                      height: (400 * aspectratio) / 6,
                      decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ]))));
  }
}

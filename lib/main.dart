import 'package:flutter/material.dart';

void main() => runApp(const SelectionContainerDisabledExampleApp());

// pink color: (215, 98, 244) (R, G, B)
class SelectionContainerDisabledExampleApp extends StatelessWidget {
  const SelectionContainerDisabledExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    String day;
    if (date.weekday == 0) {
      day = "Sunday";
    } else if (date.weekday == 1) {
      day = "Monday";
    } else if (date.weekday == 2) {
      day = "Tuesday";
    } else if (date.weekday == 3) {
      day = "Wednesday";
    } else if (date.weekday == 4) {
      day = "Thursday";
    } else if (date.weekday == 5) {
      day = "Friday";
    } else {
      day = "Saturday";
    }
    const aspectratio = 16 /
        9; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    const uielementpadding =
        11.5; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    const screenwidth =
        400.00; // WARNING! CHANGING THIS VALUE MAY LEAD TO UNEXPECTED CONSEQUENCES WITH SCALING!!!
    const screenheight = screenwidth * aspectratio;
    return Container(
        color: Colors.blue[50],
        child: Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
                body: Container(
                    width: screenwidth,
                    height: screenheight,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(children: [
                      // list of boxes
                      Padding(
                          // header
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
                          // welcome text
                          padding: EdgeInsets.all(uielementpadding),
                          child: DefaultTextStyle.merge(
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              child: Center(
                                  child: Text(
                                      'Welcome\n' +
                                          date.month.toString() +
                                          '/' +
                                          date.day.toString() +
                                          '/' +
                                          date.year.toString() +
                                          ' - ' +
                                          day,
                                      textAlign: TextAlign.center)))),
                      Padding(
                        // progress bar
                          padding: EdgeInsets.all(5),
                          child: LinearProgressIndicator(
                            value: 0.66,
                            minHeight: 30,
                            color: Color.fromARGB(255, 215, 98, 244),
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          )),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: SizedBox(
                          width: screenwidth,
                          child: Text('___/2000 calories', textAlign: TextAlign.left),
                        )
                      ),
                    ])))));
  }
}

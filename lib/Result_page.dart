import 'package:bmi/Constantes.dart';
import 'package:flutter/material.dart';

import 'CalculatorBrain.dart';
import 'component.dart';

class ResultPage extends StatelessWidget {
  final CalculatorBrain cal;
  ResultPage({required this.cal});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15),
              child: Text(
                'Your Result',
                style: ktextTitrefont,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Mywidget(
              coleur: (kAppcolor['activecolor'])!,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    cal.getShortmsg(),
                    style: ktextResultfont,
                  ),
                  Text(
                    cal.calculBmi(),
                    style: kresultfont,
                  ),
                  Text(
                    cal.getMsg(),
                    style: kMsgResultfont,
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          (kAppcolor['dectivecolor'])!),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'SAVE RESULT',
                      style: kbuttonsaveResult,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 65,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              color: (kAppcolor['footercolor'])!,
              child: Center(
                  child: Text(
                'Re-Calculate your BMI',
                style: TextStyle(fontSize: 20),
              )),
            ),
          ),
        ],
      )),
    );
  }
}

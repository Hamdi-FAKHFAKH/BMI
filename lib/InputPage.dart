// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CalculatorBrain.dart';
import 'Constantes.dart';
import 'Result_page.dart';
import 'component.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //-------------------------------- variable ------------------------

  Color m = Color(0xFF111328);
  Color f = Color(0xFF111328);
  Sex? selectedSex;
  int height = 180;
  double weight = 60;
  int age = 20;

  /// ******************************* end variable  *****************************/
  // void changecolor(Sex sex) {
  //   sex == Sex.Male
  //       ? {
  //           m == Color(0xFF1D1E33)
  //               ? m = (Appcolor['dectivecolor'])!
  //               : {m = (Appcolor['activecolor'])!, f = Color(0xFF111328)}
  //         }
  //       : {
  //           f == Color(0xFF1D1E33)
  //               ? f = (Appcolor['dectivecolor'])!
  //               : {
  //                   f = (Appcolor['activecolor'])!,
  //                   m = Color(0xFF111328),
  //                 }
  //         };
  // }

  ///*****************************************************************************************/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Mywidget(
                    f: () {
                      setState(() {
                        selectedSex = Sex.Male;
                      });
                    },
                    coleur: selectedSex == Sex.Male
                        ? (kAppcolor['activecolor'])!
                        : (kAppcolor['dectivecolor'])!,
                    cardchild: Cardchild(
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                    ),
                  ),
                ),
                Expanded(
                    child: Mywidget(
                  f: () {
                    setState(() {
                      selectedSex = Sex.Female;
                    });
                  },
                  coleur: selectedSex == Sex.Female
                      ? (kAppcolor['activecolor'])!
                      : (kAppcolor['dectivecolor'])!,
                  cardchild: Cardchild(
                    icon: FontAwesomeIcons.venus,
                    text: 'Female',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Mywidget(
              coleur: (kAppcolor['activecolor'])!,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Height',
                    style: kTextSexStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: ktextHeightStyle,
                      ),
                      Text(
                        'cm',
                        style: ktextHeightuniteStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white, // couleur de bar active
                        inactiveTrackColor:
                            const Color(0xFF8D8E98), //couleur de  bar inactive
                        thumbColor:
                            kAppcolor['footercolor'], // couleur de curseur
                        overlayColor: kAppcolor[
                            'overlaycolor'], // couleur de shado de curseur lors d'appuis
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 9),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20)),
                    child: Slider(
                        min: kheightMin.toDouble(),
                        max: kheightMax.toDouble(),
                        value: height.toDouble(),
                        onChanged: (double h) {
                          setState(() {
                            height = h.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Mywidget(
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Weight',
                        style: kTextSexStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: ktextHeightStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyIconButton(
                            icon: FontAwesomeIcons.minus,
                            f: () {
                              setState(() {
                                if (weight > 30) {
                                  weight -= 0.5;
                                }
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          MyIconButton(
                            icon: FontAwesomeIcons.plus,
                            f: () {
                              setState(() {
                                if (weight < 250) {
                                  weight += 0.5;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  coleur: (kAppcolor['activecolor'])!,
                )),
                Expanded(
                  child: Mywidget(
                    coleur: (kAppcolor['activecolor'])!,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Age',
                          style: kTextSexStyle,
                        ),
                        Text(
                          age.toString(),
                          style: ktextHeightStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyIconButton(
                              icon: FontAwesomeIcons.minus,
                              f: () {
                                setState(() {
                                  if (weight > 30) {
                                    age--;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyIconButton(
                              icon: FontAwesomeIcons.plus,
                              f: () {
                                setState(() {
                                  if (weight < 250) {
                                    age++;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain cal = CalculatorBrain(h: height, w: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(cal: cal);
              }));
            },
            child: Container(
              height: 65,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              color: (kAppcolor['footercolor'])!,
              child: Center(
                  child: Text(
                'calcule your BMI',
                style: TextStyle(fontSize: 20),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class MyIconButton extends StatelessWidget {
  final IconData? icon;
  final void Function()? f;
  MyIconButton({this.icon, this.f});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: f,
      constraints: const BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: const CircleBorder(),
      fillColor: kAppcolor['buttomcolor'],
      child: Icon(icon),
      elevation: 5,
    );
  }
}

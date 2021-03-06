import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,

            child: Text('Your Result',
            style: kTitleStyle,
              textAlign: TextAlign.justify,
            ),
          ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(),
                    style: kResultStyle,
                    ),
                    Text(bmiResult,
                    style: kBMITextStyle,
                    ),
                    Text(interpretation,
                      style: kResultBodyText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'Re-Calculate'),
        ],
      ),
    );
  }
}

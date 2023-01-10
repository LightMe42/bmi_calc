import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

int userHeight = 120;
int userWeight = 60;

double countBMI(
  int height,
  int weight,
) {
  return (weight / ((height / 100) * (height / 100))).ceilToDouble();
}

Map<String, String> indexMap = {
  'Thin': "You are too thin, it's time to buy some snacks",
  'Normal': 'Good work, buddy! keep it',
  'Overweight': 'oh you eat too much, lets do some exercises!',
};

String checkResult(double bmi) {
  if (bmi < 18.5) {
    return 'Thin';
  } else if (bmi > 25) {
    return 'Overweight';
  } else {
    return 'Normal';
  }
}

class CalculatePage extends StatelessWidget {
  String shortReview = 'good';
  double result = 10.0;
  String resultText = 'Basic text for appoint the position';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
          backgroundColor: kBackgroundColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: kActiveCardColor,
                //width: double.infinity,
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          shortReview =
                              checkResult(countBMI(userHeight, userWeight)),
                          style: kShortReviewStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        //alignment: Alignment.center,
                        child: Text(
                          countBMI(userHeight, userWeight).toString(),
                          style: TextStyle(
                            fontSize: 90.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          resultText = indexMap[shortReview]!,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RECALCULATE',
                    style: kLargeButtonTextStyle,
                  ),
                ),
                color: kBottomButtonColor,
                margin: const EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            )
          ],
        ));
  }
}

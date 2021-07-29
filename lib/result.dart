import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartMyApp;
  Result(this.resultScore, this.restartMyApp);
  String get getResultScore {
    String textForResultScore =
        'Your final score is : ' + resultScore.toString() + ' ';
    if (resultScore <= 20 && resultScore != null) {
      textForResultScore +=
          ' You have your own preferences and aint quite flexible for current Meta :( ';
    } else if (resultScore > 20 && resultScore < 60) {
      textForResultScore +=
          'You \'re Meta Abuser or You\'re quite lucky and Meta is perfect for you!  Go play some Rankeds ^_^';
    } else {
      textForResultScore +=
          'Your score is garbage pick other preferences (sad smile) ';
    }
    return textForResultScore;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(flex: 4),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                getResultScore,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacer(
            flex: 4,
          ),
          Flexible(
            flex: 1,
            child: TextButton(
              onPressed: restartMyApp,
              child: Text(
                'Restart The Quiz',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: TextButton.styleFrom(primary: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}

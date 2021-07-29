import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Who\'s your favorite \"League of Legends\"  toplaner?',
      'answers': [
        {'textAnswer': 'Ornn', 'score': 8},
        {'textAnswer': 'Darius', 'score': 6},
        {'textAnswer': 'Riven', 'score': 7},
        {'textAnswer': 'Fiora', 'score': 9},
        {'textAnswer': 'Garen', 'score': 3}
      ],
    },
    {
      'questionText': 'Who\'s your favorite \"League of Legends\"  jungler?',
      'answers': [
        {'textAnswer': 'Kayn', 'score': 9},
        {'textAnswer': 'Amumu', 'score': 9},
        {'textAnswer': 'Lee Sin', 'score': 7},
        {'textAnswer': 'Evelynn', 'score': 7},
        {'textAnswer': 'Graves', 'score': 10}
      ],
    },
    {
      'questionText': 'Who\'s your favorite \"League of Legends\" midlaner?',
      'answers': [
        {'textAnswer': 'Yone', 'score': 8},
        {'textAnswer': 'Akali', 'score': 7},
        {'textAnswer': 'Sylas', 'score': 6},
        {'textAnswer': 'Zoey', 'score': 10},
        {'textAnswer': 'Zed', 'score': 4}
      ],
    },
    {
      'questionText': 'Who\'s your favorite \"League of Legends\" adc?',
      'answers': [
        {'textAnswer': 'Jhin', 'score': 7},
        {'textAnswer': 'Vayne', 'score': 9},
        {'textAnswer': 'Kaisa', 'score': 10},
        {'textAnswer': 'Ashe', 'score': 8},
        {'textAnswer': 'Swain', 'score': 6}
      ],
    },
    {
      'questionText': 'Who\'s your favorite \"League of Legends\" support?',
      'answers': [
        {'textAnswer': 'Nami', 'score': 6},
        {'textAnswer': 'Thresh', 'score': 10},
        {'textAnswer': 'Yummi', 'score': 4},
        {'textAnswer': 'Panteon', 'score': 8}
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartMyApp() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
    });
    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restartMyApp),
      ),
    );
  }
}

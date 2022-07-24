import 'package:flutter/material.dart';
import 'globals.dart' as glb;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[900],
        appBar: AppBar(
          title: Text('Love Guru'),
          backgroundColor: Colors.pink[900],
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<String> question = [
    'How many layers of makeup have you put on? I feel it is peeling off.',
    'What decade do you feel like you most belong in?',
    'Your style is absurd and weird; is your fashion sense inspired by Lady Gaga?',
    'Is there a book you could read over and over again without ever growing tired of it?',
    'What’s wrong with you? Why are you always doing that?',
    'Why can’t you just relax?',
    'If you knew it would make me uncomfortable, then why did you bring it up?',
    'What are your expectations for the relationship?',
    'If money didn’t matter, what would you want to do for a living?',
    'Can I trust you?” / “Are you telling me the truth?',
    'I know you got a bf,but can we be just a friends',
    'What makes you feel the most loved?',
    'you are looking tired today,did you not get a good night sleep ?',
    'Did Religion Matters You ?',
    'I don\'t know what do you want to do ?',
    'Why are you sigle ?',
    'Do You think i am attractive ?',
    'What goals do you have for the relationship?',
    'What is something you are not willing to compromise on?',
    'You Look different today , why is that ?',
    'if your partner gives you money will you accept it or not ?',
    'Would you consider moving in together?',
    'Are you breaking up with me?',
    'Have you ever made someone  fool for trying on him/her',
    'Do we make each other better people?'
  ];
  List<bool> answer = [
    false,
    true,
    false,
    true,
    false,
    false,
    false,
    true,
    true,
    false,
    false,
    true,
    false,
    true,
    false,
    false,
    false,
    true,
    true,
    false,
    false,
    true,
    false,
    false,
    true
  ];
  int questionNumber = 0;
  // int score =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question[questionNumber],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'Yes, I\'ll Ask',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer = answer[questionNumber];
                if (correctAnswer == true) {
                  glb.score++;
                }
                setState(() {
                  questionNumber++;
                  if (questionNumber == question.length) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Result()),
                    );
                    questionNumber = 0;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red[700],
              child: Text(
                'No, I\'ll Not Ask',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer = answer[questionNumber];
                if (correctAnswer == false) {
                  glb.score++;
                }
                setState(() {
                  questionNumber++;
                  if (questionNumber == question.length) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Result()),
                    );
                    questionNumber = 0;
                  }
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[900],
        appBar: AppBar(
          title: Text('Result'),
          backgroundColor: Colors.pink[900],
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Click(),
          ),
        ),
      ),
    );
  }
}

class Click extends StatefulWidget {
  const Click({Key? key}) : super(key: key);

  @override
  State<Click> createState() => _ClickState();
}

class _ClickState extends State<Click> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: FlatButton(
          color: Colors.deepOrange,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Check Your Result Here',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          onPressed: () {
            if (glb.score > 16) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const true1()),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const flase2()),
              );
            }
          },
        ),
      ),
    );
  }
}

class true1 extends StatefulWidget {
  const true1({Key? key}) : super(key: key);

  @override
  State<true1> createState() => _true1State();
}

class _true1State extends State<true1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[900],
        appBar: AppBar(
          title: Text('Result'),
          backgroundColor: Colors.pink[900],
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: LoveResult2(),
          ),
        ),
      ),
    );
  }
}

class flase2 extends StatefulWidget {
  const flase2({Key? key}) : super(key: key);

  @override
  State<flase2> createState() => _flase2State();
}

class _flase2State extends State<flase2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[900],
        appBar: AppBar(
          title: Text('Result'),
          backgroundColor: Colors.pink[900],
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: LoveResult(),
          ),
        ),
      ),
    );
  }
}

class LoveResult extends StatefulWidget {
  const LoveResult({Key? key}) : super(key: key);

  @override
  State<LoveResult> createState() => _LoveResultState();
}

class _LoveResultState extends State<LoveResult> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          color: Colors.deepOrange,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'Beta Tum Se Naa Ho Payega',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Beta Tum se N Ho Payega........Par bhai mujhe pata hai tu kr lega Bas Himmat Mat Harana',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.deepOrange,
              child: Text(
                'Restart',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class LoveResult2 extends StatefulWidget {
  const LoveResult2({Key? key}) : super(key: key);

  @override
  State<LoveResult2> createState() => _LoveResult2State();
}

class _LoveResult2State extends State<LoveResult2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          color: Colors.deepOrange,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'Bhai Tu Pata Skta Hai',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'All Done Bhai You are Eligible for Doing Chutiyapaa means Relationship',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.deepOrange,
              child: Text(
                'Restart',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}

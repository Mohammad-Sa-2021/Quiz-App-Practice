import 'package:flutter/material.dart';
import 'package:quiz_app_2/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> questionsList = [
    'How many days do we have in a week?',
    'How many colors are there in a rainbow?',
    'In which direction does the sun rise?',
  ];

  Map answersList = {
    'answer1': ['6', '7', '8'],
    'answer2': ['10', '9', '7'],
    'answer3': ['East', 'West', 'North'],
  };

  int questionsIndex = 0;
  int answersIndex = 0;
  int score = 0;

  void questionsFun() {
    setState(() {
      questionsIndex++;
      answersIndex++;
      if (questionsIndex >= 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultScreen()),
        );
      }
    });
  }

  void resetquiz() {
    questionsIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 150,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                questionsList[questionsIndex],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                ),
                onPressed: questionsFun,
                child: Text(
                  answersList['answer1'][answersIndex],
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                ),
                onPressed: questionsFun,
                child: Text(
                  answersList['answer1'][answersIndex],
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            ),
            onPressed: questionsFun,
            child: Text(
              answersList['answer1'][answersIndex],
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

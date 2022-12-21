import 'package:flutter/material.dart';

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {

  List<Icon> scoreKeeper = [];
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];

  List<bool> answers = [
    false,
    true,
    true
  ];

  int questionNumber = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questions[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                ),
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  //The user picked true.
                  bool correctAnswer = answers[questionNumber];

                  if(correctAnswer == true){
                    print('user got it right');
                  }else{
                    print('user got it wrong');
                  }

                  setState(() {


                    scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
                    if(questionNumber == (questions.length - 1) ){
                      questionNumber = 0;
                    }else{
                      questionNumber++;
                    }
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  //The user picked false.
                  bool correctAnswer = answers[questionNumber];

                  if(correctAnswer == false){
                    print('user got it right');
                  }else{
                    print('user got it wrong');
                  }
                  setState(() {
                    scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
                    if(questionNumber == (questions.length - 1) ){
                      questionNumber = 0;
                    }else{
                      questionNumber++;
                    }
                  });
                },
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}

/*
  question1: 'You can lead a cow down stairs but not up stairs.', false,
  question2: 'Approximately one quarter of human bones are in the feet.', true,
  question3: 'A slug\'s blood is green.', true,
*/

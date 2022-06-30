import 'package:flutter/material.dart';
import 'package:quiz/constractors/constractors.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/screens/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int showquestionindex = 0;
  Questions? selectedquestion;
  bool resultbottonshown = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    selectedquestion = getquestionslist()[showquestionindex];
    String showimage = getquestionslist()[showquestionindex].imagenumber!;
    int lengthqu = getquestionslist().length;
    int currentqu = showquestionindex + 1;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'سوال $currentqu از $lengthqu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$showimage.png'),
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              getquestionslist()[showquestionindex].titlequestion!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ...List.generate(
              4,
              (index) => getquestions(index),
            ),
            if (resultbottonshown == true)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  minimumSize: Size(200.0, 40.0),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Resultscreen(
                      scorewin: score,
                    );
                  }));
                },
                child: Text(
                  'مشاهده نتایج بازی',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget getquestions(int index) {
    return ListTile(
      title: Text(
        getquestionslist()[showquestionindex].answerlist![index],
        textAlign: TextAlign.end,
        style: TextStyle(fontSize: 18),
      ),
      onTap: () {
        if (selectedquestion!.currectanswer == index) {
          score = score + 1;
        } else {
          print('false');
        }
        if (getquestionslist().length - 1 == showquestionindex) {
          resultbottonshown = true;
        }
        setState(() {
          if (getquestionslist().length - 1 > showquestionindex) {
            showquestionindex++;
          }
        });
      },
    );
  }
}

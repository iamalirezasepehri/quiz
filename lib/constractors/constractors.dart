import 'package:quiz/data/questions.dart';

List<Questions> getquestionslist() {
  var firstquestion = Questions();
  firstquestion.imagenumber = '1';
  firstquestion.titlequestion = 'بهترین شعبده باز جهان کیست؟';
  firstquestion.answerlist = [
    'علیرضا دانشور',
    'هودی هدینی',
    'دیوید کاپرفیلد',
    'هری پاتر',
  ];
  firstquestion.currectanswer = 1;

  var secondQuestion = Questions();
  secondQuestion.imagenumber = '2';
  secondQuestion.titlequestion = 'کدام کشور ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.answerlist = [
    'هند',
    'آمریکا',
    'چین',
    'روسیه',
  ];
  secondQuestion.currectanswer = 3;

  return [firstquestion, secondQuestion];
}

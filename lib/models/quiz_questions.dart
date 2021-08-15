class Questions {
  String? question;
  var answer;
  var questionindex;

  Questions({
    this.question,
    this.answer,
    this.questionindex,
  });

  List<String> questionsList2 = [
    'How many days do we have in a week?',
    'How many colors are there in a rainbow?',
    'In which direction does the sun rise?',
  ];

  Map answersList2 = {
    'answer1': ['6', '7', '8'],
    'answer2': ['10', '9', '7'],
    'answer3': ['East', 'West', 'North'],
  };

  Questions q1 = Questions(
      question: 'Who is your best friend?',
      answer: ['Mohammad', 'Noor', 'Ahmed'],
      questionindex: 0);
  Questions q2 = Questions(
      question: 'Who is your best Doctor?',
      answer: ['Mohammad', 'Noor', 'Ahmed'],
      questionindex: 1);
  Questions q3 = Questions(
      question: 'Who is your best Teacher?',
      answer: ['Mohammad', 'Noor', 'Ahmed'],
      questionindex: 2);
}

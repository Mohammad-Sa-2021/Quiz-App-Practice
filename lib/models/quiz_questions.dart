class Questions {
  String? question;
  var answer;
  var questionindex;

  Questions({
    this.question,
    this.answer,
    this.questionindex,
  });

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

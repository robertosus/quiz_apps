class Question {
  final int? id;
  final String? question;
  final List<String>? option;
  final int? answer_index;

  Question(this.id, this.question, this.option, this.answer_index);

  Question.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        question = json['question'],
        option = json['option'],
        answer_index = json['answer_index'];
}

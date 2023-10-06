import 'package:flutter/material.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                ("Your ans:${itemData['user_answer'] as String}"),
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 13,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                ("Correct ans:${itemData['correct_answer'] as String}"),
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 0),
                    fontSize: 13,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class IDEExplanation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What is an IDE?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'An Integrated Development Environment (IDE) includes a code editor, a debugger, a compiler, and other tools to simplify the development process however you still need to download the programming language for it to work. We Highly recommend Visual Studio Code since you can code in almost every avaliable programming langauge with this one IDE, however we included extra ones catered for specefic languages and your needs.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

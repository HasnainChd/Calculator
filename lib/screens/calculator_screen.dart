import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String displayText = '';
  String history = '';
  String operand = '';
  int num1 = 0;
  int num2 = 0;

  void buttonClick(String btnVal) {
    setState(() {
      if (btnVal == 'C') {
        displayText = '';
        history = '';
        operand = '';
        num1 = 0;
        num2 = 0;
      } else if (btnVal == '<--') {
        if (displayText.isNotEmpty) {
          displayText = displayText.substring(0, displayText.length - 1);
          history = displayText;
        }
      } else if (btnVal == '+' || btnVal == '-' || btnVal == 'x' || btnVal == '/') {
        num1 = int.parse(displayText);
        operand = btnVal;
        displayText = '';
        history = '$num1 $operand';
      } else if (btnVal == '=') {
        num2 = int.parse(displayText);
        if (operand == '+') {
          displayText = (num1 + num2).toString();
        } else if (operand == '-') {
          displayText = (num1 - num2).toString();
        } else if (operand == 'x') {
          displayText = (num1 * num2).toString();
        } else if (operand == '/') {
          displayText = (num1 / num2).toString();
        }
        history = '$num1 $operand $num2';
      } else {
        displayText += btnVal;
        history = displayText;
      }
    });
  }

  Widget button(String text, {Color textColor = Colors.black}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: 70,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: textColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            onPressed: () => buttonClick(text),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Calculator',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text(
                  history,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                displayText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
            ),
          ),
          Row(
            children: [
              button('C', textColor: Colors.blue),
              button('/', textColor: Colors.blue),
              button('x', textColor: Colors.blue),
              button('<--', textColor: Colors.blue),
            ],
          ),
          Row(
            children: [
              button('7'),
              button('8'),
              button('9'),
              button('=', textColor: Colors.orange),
            ],
          ),
          Row(
            children: [
              button('4'),
              button('5'),
              button('6'),
              button('-', textColor: Colors.blue),
            ],
          ),
          Row(
            children: [
              button('1'),
              button('2'),
              button('3'),
              button('+', textColor: Colors.blue),
            ],
          ),
          Row(
            children: [
              button('%'),
              button('0'),
              button('.'),
              button('00'),
            ],
          ),
        ],
      ),
    );
  }
}

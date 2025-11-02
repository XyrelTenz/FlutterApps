import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final List<String> buttons = [
    'C',
    '⌫',
    '÷',
    '×',
    '7',
    '8',
    '9',
    '-',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '=',
    '0',
    '.',
    '',
    '',
    '',
  ];

  String displayText = '0';
  bool justCalculated = false;

  void onButtonPressed(String value) {
    setState(() {
      if (value == 'C') {
        displayText = '0';
        justCalculated = false;
      } else if (value == '⌫') {
        if (displayText.length > 1) {
          displayText = displayText.substring(0, displayText.length - 1);
        } else {
          displayText = '0';
        }
      } else if (value == '=') {
        _calculateResult();
        // displayText = "Lunes Nasad!!";
      } else {
        if (justCalculated && RegExp(r'[0-9]').hasMatch(value)) {
          displayText = value;
          justCalculated = false;
        } else if (displayText == '0' && RegExp(r'[0-9.]').hasMatch(value)) {
          displayText = value;
        } else {
          displayText += value;
        }
      }
    });
  }

  void _calculateResult() {
    try {
      String expr = displayText.replaceAll('×', '*').replaceAll('÷', '/');
      double result = _evaluateExpression(expr);

      String formatted = result % 1 == 0
          ? result.toInt().toString()
          : result
                .toStringAsFixed(6)
                .replaceAll(RegExp(r'0+$'), '')
                .replaceAll(RegExp(r'\.$'), '');

      setState(() {
        displayText = formatted;
        justCalculated = true;
      });
    } catch (e) {
      setState(() {
        displayText = "Error";
      });
    }
  }

  double _evaluateExpression(String expr) {
    List<String> tokens = _tokenize(expr);

    // Handle multiplication and division
    for (int i = 0; i < tokens.length; i++) {
      if (tokens[i] == '*' || tokens[i] == '/') {
        double left = double.parse(tokens[i - 1]);
        double right = double.parse(tokens[i + 1]);
        double res = tokens[i] == '*' ? left * right : left / right;
        tokens.replaceRange(i - 1, i + 2, [res.toString()]);
        i = 0;
      }
    }

    // Addition and Subtraction
    for (int i = 0; i < tokens.length; i++) {
      if (tokens[i] == '+' || tokens[i] == '-') {
        double left = double.parse(tokens[i - 1]);
        double right = double.parse(tokens[i + 1]);
        double res = tokens[i] == '+' ? left + right : left - right;
        tokens.replaceRange(i - 1, i + 2, [res.toString()]);
        i = 0;
      }
    }

    return double.parse(tokens.first);
  }

  List<String> _tokenize(String expr) {
    final regex = RegExp(r'(\d+\.?\d*|\+|\-|\*|\/)');
    return regex.allMatches(expr).map((m) => m.group(0)!).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(24),
                child: Text(
                  displayText,
                  style: const TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    final button = buttons[index];

                    Color bgColor;
                    if (button == 'C' || button == '⌫') {
                      bgColor = Colors.redAccent;
                    } else if (['÷', '×', '-', '+', '='].contains(button)) {
                      bgColor = Colors.orangeAccent;
                    } else {
                      bgColor = Colors.grey[850]!;
                    }

                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () => onButtonPressed(button),
                      child: Text(
                        button,
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

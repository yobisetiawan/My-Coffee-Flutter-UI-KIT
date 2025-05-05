import 'package:flutter/material.dart';

class PinComponent extends StatefulWidget {
  const PinComponent({super.key});

  @override
  PinComponentState createState() => PinComponentState();
}

class PinComponentState extends State<PinComponent> {
  final List<String> _input = [];

  void _onPressed(String value) {
    if (_input.length < 6) {
      setState(() {
        _input.add(value);
      });
    }

    if (_input.length == 6) {
      final pin = _input.join(); // Combine the list into a single string
      // ignore: avoid_print
      print("The pin is => $pin");
    }
  }

  void _onBackspace() {
    if (_input.isNotEmpty) {
      setState(() {
        _input.removeLast();
      });
    }
  }

  Widget _buildCircle(bool filled) {
    return Container(
      width: 16,
      height: 16,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: filled ? Colors.black : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildKey(String label, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 76,
        height: 76,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            6,
            (index) => _buildCircle(index < _input.length),
          ),
        ),
        SizedBox(height: 24),
        ...[
          ['1', '2', '3'],
          ['4', '5', '6'],
          ['7', '8', '9'],
          ['', '0', '←'],
        ].map((row) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                row.map((label) {
                  if (label == '') {
                    return SizedBox(width: 86);
                  } else if (label == '←') {
                    return GestureDetector(
                      onTap: _onBackspace,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(Icons.backspace, color: Colors.white),
                        ),
                      ),
                    );
                  } else {
                    return _buildKey(label, onTap: () => _onPressed(label));
                  }
                }).toList(),
          );
        }),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  PasswordWidget({Key? key}) : super(key: key);

  bool _obscureTest = true;

  String _type = '';

  Icon getIcon() {
    return _obscureTest
        ? const Icon(Icons.visibility)
        : const Icon(Icons.visibility_off);
  }

  final Map<String, Map<String, dynamic>> _limits = {
    'valid': {'nb': 8, 'color': Colors.green},
    'intermediate': {'nb': 4, 'color': Colors.orange},
    'invalid': {'nb': 8, 'color': Colors.red},
  };
  Color getColor() {
    if (_type.length >= _limits['valid']!['nb']) {
      return _limits['valid']!['color'];
    } else if (_type.length >= _limits['intermediate']!['nb']) {
      return _limits['intermediate']!['color'];
    }
    return _limits['invalid']!['color'];
  }

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    widget._type = value;
                  });
                },
                obscureText: widget._obscureTest,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  widget._obscureTest = !widget._obscureTest;
                });
              },
              icon: widget.getIcon(),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        AnimatedContainer(
          alignment: Alignment.center,
          width: 500,
          height: 5,
          color: widget.getColor(),
          duration: const Duration(seconds: 1),
        )
      ],
    );
  }
}

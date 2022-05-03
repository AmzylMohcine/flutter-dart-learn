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

  Color getColor() {
    return Colors.red;
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
        Container(
          alignment: Alignment.center,
          width: 500,
          height: 5,
          color: widget.getColor(),
        )
      ],
    );
  }
}

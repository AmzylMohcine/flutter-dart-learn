import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TipsCalculator extends StatefulWidget {
  TipsCalculator({Key? key}) : super(key: key);

  double _amount = 0;
  double _numberOfPerson = 0;
  double _extra = 0;
  double _total = 0;

  void totalPerPerson() {
    _total = (_amount * ((_extra / 100) + 1)) / _numberOfPerson;
  }

  @override
  State<TipsCalculator> createState() => _TipsCalculatorState();
}

class _TipsCalculatorState extends State<TipsCalculator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Tips Calculator",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 135, 27),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                initialValue: widget._amount.toString(),
                decoration: const InputDecoration(
                  hintText: '0',
                  labelText: 'Amount €',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    setState(() {
                      widget._amount = double.parse(value);
                      widget.totalPerPerson();
                    });
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                initialValue: widget._numberOfPerson.toString(),
                decoration: const InputDecoration(
                  hintText: '0',
                  labelText: 'Number of persons',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    widget._numberOfPerson = double.parse(value);
                    widget.totalPerPerson();
                  });
                },
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                initialValue: widget._extra.toString(),
                decoration: const InputDecoration(
                  hintText: '0',
                  labelText: 'Extra %',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    widget._extra = double.parse(value);
                    widget.totalPerPerson();
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Total Per Person : " + widget._total.toStringAsFixed(2) + "€",
            textScaleFactor: 1.5,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        )
      ],
    );
  }
}

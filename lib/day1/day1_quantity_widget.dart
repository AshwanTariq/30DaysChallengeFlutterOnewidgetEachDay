import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Incrementor extends StatefulWidget {
  Incrementor(
      {Key? key,
      required this.onchangedCallback,
      required this.text,
      this.borderRadius = 20,
      this.borderWidth = 2,
      this.borderColor = Colors.yellow,
      this.initialValue = 0})
      : super(key: key);

  final Function(int) onchangedCallback;
  final String text;
  final double borderRadius, borderWidth;
  final Color borderColor;
  final int initialValue;

  @override
  _IncrementorState createState() => _IncrementorState();
}

class _IncrementorState extends State<Incrementor> {
  int value = 0;
  final TextEditingController _textEditingController = TextEditingController();
  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    _textEditingController.text=value.toString();


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            border: Border.all(
                color: widget.borderColor, width: widget.borderWidth)),
        height: 43,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            )),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (value != 0) {
                      value--;
                      widget.onchangedCallback.call(value);
                    }
                  });
                },
                icon: FaIcon(FontAwesomeIcons.minus)),
            TextField(
              controller: _textEditingController,
              keyboardType: TextInputType.number,
              onSubmitted: (value) {

                widget.onchangedCallback.call(int.parse(value));
              },
            ),

            IconButton(
                onPressed: () {
                  setState(() {
                    value++;
                    widget.onchangedCallback.call(value);
                  });
                },
                icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}

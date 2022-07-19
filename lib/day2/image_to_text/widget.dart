import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget_styling.dart';

class MyCustomTextField extends StatelessWidget {
  MyCustomTextField({Key? key,this.hint="Paste text here", required this.width, required this.height, required this.padding,}) : super(key: key);

  final String hint;
  final double width,height,padding;

  final TextEditingController _textEditingController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(padding),
      child: Container(
        width: width,
        height: height,
        decoration: StyleSet.getBoxDecoration(context),
        child: TextField(
          maxLines: 100,

          controller: _textEditingController,
          style: TextStyle(fontSize: 14),
          decoration:  InputDecoration(
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintStyle: const TextStyle(fontSize: 14,color: Colors.grey,),
            hintText: hint,


          ),
        ),
      ),
    );
  }
}



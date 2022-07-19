import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/day2/image_to_text/widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widget_styling.dart';

class ImageToTextScreen extends StatelessWidget {
  const ImageToTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: ElevatedButton(
        child: const Text(
          "Pick image",
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  decoration: StyleSet.getBoxDecoration(context),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: (){
                            ///Pick Image from Cam
                          },
                          title: Text("Camera"),
                          leading: Icon(FontAwesomeIcons.camera),
                        ),
                        ListTile(
                          onTap: (){
                            ///Pick image from Gallery
                          },
                          title: Text("Gallery"),
                          leading: Icon(FontAwesomeIcons.image),
                        )
                      ],
                    ),
                  ),
                );
              });
        },
      ),
      appBar: AppBar(
        title: const Text(
          "Image To Text",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          MyCustomTextField(
            padding: 18.0,
            height: 550,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

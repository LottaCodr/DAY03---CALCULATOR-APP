import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;
  final double textSize;
  final Function callBack;

  const Buttons({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        width: 80,
        height: 80,

        child: ElevatedButton(
          onPressed: (){callBack(text);},
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color(fillColor)),
          ),
          child:
          Text(text,
            style: GoogleFonts.rubik(
                textStyle:
                TextStyle(
                    fontSize: textSize,
                    fontWeight: FontWeight.bold,
                    decorationColor: Color(textColor),
                    )),),
        ),
      ),
    );
  }
}


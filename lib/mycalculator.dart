import 'package:flutter/material.dart';
import 'buttons.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String history = '';
  String displayText = '';
  String result = '';
  String operation = '';
  int num1 = 0;
  int num2 = 0;

//function for the onClick button

  void btnOnClick(String btnVal){

    if(
    btnVal == 'AC') {
      num1 = 0;
      num2 = 0;
      history = '';
      result = '';
      displayText = '';
    }
    else if( btnVal == 'C') {
      num1 = 0;
      num2 = 0;
      result = '';
      displayText = '';
    }
    else if ( btnVal == "+/-"){
      if (displayText[0] != "-") {
        result = "-" + displayText;
      } else {
        result = displayText.substring(1);
      }
    }
    
    else if ( btnVal == "DEL"){
      result = displayText.substring(0, displayText.length -1);
    }
    else if(
      btnVal == "+" ||
      btnVal == "-" ||
      btnVal == "/" ||
      btnVal == "X"
    ) {
      num1 = int.parse(displayText);
      operation = btnVal;
      result = '';
    }
    else if( btnVal == '=' ) {

      num2 = int.parse(displayText);

      if (operation == '+') {
        result = (num1 + num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      }
      if (operation == '-') {
        result = (num1 - num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      }
      if (operation == '/') {
        result = (num1 / num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      }
      if (operation == 'X') {
        result = (num1 * num2).toString();
        history = num1.toString() + operation.toString() + num2.toString();
      }
    }    else {
      result = int.parse(displayText + btnVal).toString();
    }
    setState(() {
      displayText = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              alignment: Alignment.bottomRight,
              child:
              Text(
                history,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                ),),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              alignment: Alignment.bottomRight,
              child:
              Text(
                displayText,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 40,

              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  text: 'AC',
                  fillColor: 0xFF00000,
                  callBack: btnOnClick,
                  textColor: 0xFF8ac4d0,
                  textSize: 20,),

                Buttons(
                  text: 'C',
                  fillColor: 0xFF00000,
                  callBack: btnOnClick,
                  textColor: 0xFF8ac4d0,
                  textSize: 20,),

                Buttons(
                  text: 'DEL',
                  fillColor: 0xFF00000,
                  callBack: btnOnClick,
                  textColor: 0xFF8ac4d0,
                  textSize: 19,),

                Buttons(
                  text: '/',
                  fillColor: 0xFF00000,
                  callBack: btnOnClick,
                  textColor: 0xFF8ac4d0,
                  textSize: 30,),
              ],

            ), Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  text: '7',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 20,),

                Buttons(
                  text: '8',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 20,),

                Buttons(
                  text: '9',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 19,),

                Buttons(
                  text: 'X',
                  fillColor: 0xFF00000,
                  callBack: btnOnClick,
                  textColor: 0xFF8ac4d0,
                  textSize: 25,),
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  text: '4',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 20,),

                Buttons(
                  text: '5',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 20,),

                Buttons(
                  text: '6',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 19,),

                Buttons(
                  text: '-',
                  fillColor: 0xFF00000,
                  callBack: btnOnClick,
                  textColor: 0xFF8ac4d0,
                  textSize: 30,),
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  text: '1',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 20,),

                Buttons(
                  text: '2',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 20,),

                Buttons(
                  text: '3',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 19,),

                Buttons(
                  text: '+',
                  fillColor: 0xFF00000,
                  callBack: btnOnClick,
                  textColor: 0xFF8ac4d0,
                  textSize: 30,),
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  text: '+/-',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 20,),

                Buttons(
                  text: '0',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 20,),

                Buttons(
                  text: '.',
                  fillColor: 0xFF8ac4d0,
                  callBack: btnOnClick,
                  textColor: 0xFF00000,
                  textSize: 19,),

                Buttons(
                  text: '=',
                  fillColor: 0xFF00000,
                  callBack: btnOnClick,
                  textColor: 0xFF8ac4d0,
                  textSize: 30,),
              ],

            )
          ],
        ),
      ),
    );
  }
}

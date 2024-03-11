import 'package:flutter/material.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key, required this.appTitle});
  final String appTitle;
  @override
  State<StatefulWidget> createState() =>
      _CalcScreenState(appTitle: this.appTitle);
}

class _CalcScreenState extends State<CalcScreen> {
  _CalcScreenState({required this.appTitle});
  final String appTitle;
  var firstNum = TextEditingController();
  var secondNum = TextEditingController();
  // var result;
  String output = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appTitle)),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: firstNum,
                  decoration: InputDecoration(
                      label: Text('Enter First Number'),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple.shade200)))),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: secondNum,
                decoration: InputDecoration(
                  label: Text('Enter Second Number'),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple.shade200),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var fNum = int.parse(firstNum.text.toString());
                      var sNum = int.parse(secondNum.text.toString());
                      setState(() {
                        // result = fNum + sNum;
                        output = "Addition:${fNum + sNum}";
                      });
                    },
                    child: Text('+'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var fNum = int.parse(firstNum.text.toString());
                      var sNum = int.parse(secondNum.text.toString());
                      setState(() {
                        // result = fNum - sNum;
                        output = "Substraction:${fNum - sNum}";
                      });
                    },
                    child: Text('-'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var fNum = int.parse(firstNum.text.toString());
                      var sNum = int.parse(secondNum.text.toString());

                      // result = fNum * sNum;
                      output = "Multiplication:${fNum * sNum}";
                      setState(() {});
                    },
                    child: Text('x'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var fNum = int.parse(firstNum.text.toString());
                      var sNum = int.parse(secondNum.text.toString());
                      // result = (fNum / sNum).toStringAsFixed(2);
                      output = "Division: ${(fNum / sNum).toStringAsFixed(2)}";
                      setState(() {});
                    },
                    child: Text('/'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                output,
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}

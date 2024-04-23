import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SimpleCalculator'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(18.0),
          child: SizedBox(
            width: double.infinity,
            child: CalcButton(),
          ),
        ),
      ),
    );
  }
}

class CalcButton extends StatefulWidget {
  const CalcButton({Key? key}) : super(key: key);

  @override
  CalcButtonState createState() => CalcButtonState();
}

class CalcButtonState extends State<CalcButton> {
  double? _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    var calc = SimpleCalculator(
      value: _currentValue!,
      hideExpression: false,
      hideSurroundingBorder: true,
      autofocus: true,
      onChanged: (key, value, expression) {
        setState(() {
          _currentValue = value ?? 0;
        });
        if (kDebugMode) {
          print('$key\t$value\t$expression');
        }
      },
      onTappedDisplay: (value, details) {
        if (kDebugMode) {
          print('$value\t${details.globalPosition}');
        }
      },
      theme: const CalculatorThemeData(
        borderColor: Color.fromARGB(255, 255, 255, 255), 
        borderWidth: 2,
        displayColor: Color.fromARGB(255, 43, 41, 41), 
        displayStyle: TextStyle(fontSize: 80, color: Colors.white), 
        expressionColor: Color.fromARGB(255, 43, 41, 41), 
        expressionStyle:
            TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)), // 深蓝色表达式文字
        operatorColor: Color.fromARGB(255, 184, 184, 184), // 紫色操作符按钮
        operatorStyle: TextStyle(fontSize: 30, color: Color.fromARGB(255, 43, 41, 41)), // 白色操作符文字
        commandColor: Color.fromARGB(255, 255, 157, 59), // 橙色功能键
        commandStyle: TextStyle(fontSize: 30, color: Colors.white), // 白色功能键文字
        numColor: Color.fromARGB(255, 255, 255, 255), // 灰色数字键
        numStyle: TextStyle(fontSize: 50, color: Color.fromARGB(255, 43, 41, 41)), // 白色数字文字
      ),
    );
    return OutlinedButton(
      child: Text(_currentValue.toString()),
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: calc);
            });
      },
    );
  }
}

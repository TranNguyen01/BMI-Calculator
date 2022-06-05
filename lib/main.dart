// import 'package:bmi/views/bmi_calcutate.dart';
// import 'package:flutter/material.dart';
import 'package:bmi/views/bmiCalculator/bmi_calcutate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  Widget _bmi1 = BMICalculator();
  Widget _bmi = BMICalculator();
  Widget _bmi2 = BMICalculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: "BMI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "BMI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "BMI",
          )
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return this._bmi1;
    } else if (this.selectedIndex == 1) {
      return this._bmi;
    } else {
      return this._bmi2;
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}

// import 'package:bmi/common/config/colors_config.dart';
// import 'package:bmi/common/config/texts_config.dart';
// import 'package:bmi/views/bmi_result.dart';
// import 'package:bmi/widget/activity_slider.dart';
// import 'package:bmi/widget/height_slide.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class BMICalculator extends StatefulWidget {
//   @override
//   _BMICalculator createState() => _BMICalculator();
// }

// class _BMICalculator extends State<BMICalculator> {
//   double _height = 170.0;
//   double _weight = 50;
//   double _bmi = 0.0;
//   bool _sex = true;
//   int _age = 20;
//   double _activity = 0;
//   final String _condition = 'Select Data';
//   var caActivities = [1.2, 1.375, 1.456, 1.55, 1.725, 1.9];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           // backgroundColor: Color(0x172D67),
//           body: Container(
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color.fromARGB(255, 2, 2, 65),
//             Color.fromARGB(255, 0, 0, 0),
//           ],
//         )),
//         child: Column(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width,
//               color: primaryColor,
//               // height: 100.h,
//               child: Container(
//                 // margin: EdgeInsets.only(left: 15.w, top: 60.h),
//                 child: Text("BMI calculator",
//                     style: kTextConfig.copyWith(
//                       fontWeight: FontWeight.w500,
//                       fontSize: ScreenUtil().setSp(28.sp),
//                       color: cwColor2,
//                     )),
//               ),
//             ),
//             Expanded(
//                 flex: 10,
//                 child: Row(
//                   children: [
//                     Expanded(
//                         flex: 7,
//                         child: Container(
//                           padding: const EdgeInsets.only(
//                               left: 10, right: 10, top: 0, bottom: 0),
//                           child: Column(children: [
//                             Container(
//                               margin: const EdgeInsets.only(bottom: 0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   InkWell(
//                                     onTap: () {
//                                       setState(() {
//                                         _sex = true;
//                                       });
//                                     },
//                                     child: Column(
//                                       children: [
//                                         _sex
//                                             ? const Image(
//                                                 image: AssetImage(
//                                                   'assets/icons/man_icon.png',
//                                                 ),
//                                                 height: 150,
//                                               )
//                                             : const Image(
//                                                 image: AssetImage(
//                                                   'assets/icons/man_icon.png',
//                                                 ),
//                                                 height: 150,
//                                                 color: Colors.grey,
//                                               ),
//                                         const Text(
//                                           "Male",
//                                           style: TextStyle(
//                                               fontWeight: FontWeight.w500,
//                                               color: Colors.white),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   InkWell(
//                                     onTap: () {
//                                       setState(() {
//                                         _sex = false;
//                                       });
//                                     },
//                                     child: Column(
//                                       children: [
//                                         _sex
//                                             ? const Image(
//                                                 image: AssetImage(
//                                                   'assets/icons/woman_icon.png',
//                                                 ),
//                                                 height: 150,
//                                                 color: Colors.grey,
//                                               )
//                                             : const Image(
//                                                 image: AssetImage(
//                                                   'assets/icons/woman_icon.png',
//                                                 ),
//                                                 height: 150,
//                                               ),
//                                         const Text(
//                                           "Female",
//                                           style: TextStyle(
//                                               fontWeight: FontWeight.w500,
//                                               color: Colors.white),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(bottom: 10, top: 5),
//                               child: Column(
//                                 children: [
//                                   const Padding(
//                                     padding: EdgeInsets.only(bottom: 5),
//                                     child: Align(
//                                       alignment: Alignment.centerLeft,
//                                       child: Text(
//                                         "Age",
//                                         style: TextStyle(
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.white),
//                                       ),
//                                     ),
//                                   ),
//                                   Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         width: 65,
//                                         height: 75,
//                                         padding: const EdgeInsets.only(
//                                             left: 8, right: 8),
//                                         decoration: const BoxDecoration(
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(10)),
//                                             gradient: LinearGradient(
//                                               begin: Alignment.topRight,
//                                               end: Alignment.bottomLeft,
//                                               colors: [
//                                                 Color.fromARGB(
//                                                     255, 30, 102, 228),
//                                                 Color.fromARGB(
//                                                     255, 15, 58, 133),
//                                               ],
//                                             )),
//                                         child: const Image(
//                                           image: AssetImage(
//                                             'assets/icons/age.png',
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                           child: Container(
//                                         padding: const EdgeInsets.only(
//                                             left: 25, right: 20),
//                                         child: Column(
//                                           children: [
//                                             Container(
//                                               padding: const EdgeInsets.only(
//                                                   left: 10, right: 30),
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(_age.toString(),
//                                                       style: const TextStyle(
//                                                         fontSize: 26,
//                                                         fontWeight:
//                                                             FontWeight.w600,
//                                                         color: Colors.blue,
//                                                       )),
//                                                   Text((_age + 1).toString(),
//                                                       style: const TextStyle(
//                                                         fontSize: 17,
//                                                         fontWeight:
//                                                             FontWeight.w500,
//                                                         color: Colors.grey,
//                                                       )),
//                                                   Text((_age + 2).toString(),
//                                                       style: const TextStyle(
//                                                         fontSize: 17,
//                                                         fontWeight:
//                                                             FontWeight.w500,
//                                                         color: Colors.grey,
//                                                       )),
//                                                 ],
//                                               ),
//                                             ),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       _age--;
//                                                     });
//                                                   },
//                                                   icon: const Icon(
//                                                     Icons.remove,
//                                                     size: 25,
//                                                     color: Colors.lightBlue,
//                                                   ),
//                                                   iconSize: 20,
//                                                 ),
//                                                 IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       _age++;
//                                                     });
//                                                   },
//                                                   icon: const Icon(
//                                                     Icons.add,
//                                                     size: 25,
//                                                     color: Colors.lightBlue,
//                                                   ),
//                                                   iconSize: 20,
//                                                 ),
//                                               ],
//                                             )
//                                           ],
//                                         ),
//                                       )),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Column(
//                               children: [
//                                 const Padding(
//                                   padding: EdgeInsets.only(bottom: 5),
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Weight",
//                                       style: TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w600,
//                                           color: Colors.white),
//                                     ),
//                                   ),
//                                 ),
//                                 Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       width: 65,
//                                       height: 75,
//                                       padding: const EdgeInsets.only(
//                                           left: 8, right: 8),
//                                       decoration: const BoxDecoration(
//                                           borderRadius: BorderRadius.all(
//                                               Radius.circular(10)),
//                                           gradient: LinearGradient(
//                                             begin: Alignment.topCenter,
//                                             end: Alignment.bottomCenter,
//                                             colors: [
//                                               Color.fromARGB(255, 30, 102, 228),
//                                               Color.fromARGB(255, 15, 58, 133),
//                                             ],
//                                           )),
//                                       child: const Image(
//                                         image: AssetImage(
//                                           'assets/icons/weight_scale.png',
//                                         ),
//                                       ),
//                                     ),
//                                     Expanded(
//                                       child: Container(
//                                         padding: const EdgeInsets.only(
//                                             left: 25, right: 20),
//                                         child: Column(
//                                           children: [
//                                             Container(
//                                                 padding: const EdgeInsets.only(
//                                                     left: 10, right: 30),
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment
//                                                           .spaceBetween,
//                                                   children: [
//                                                     Text(
//                                                         _weight
//                                                             .toStringAsFixed(0),
//                                                         style: const TextStyle(
//                                                           fontSize: 26,
//                                                           fontWeight:
//                                                               FontWeight.bold,
//                                                           color: Colors.blue,
//                                                         )),
//                                                     Text(
//                                                         (_weight + 1)
//                                                             .toStringAsFixed(0),
//                                                         style: const TextStyle(
//                                                           fontSize: 17,
//                                                           fontWeight:
//                                                               FontWeight.w500,
//                                                           color: Color.fromARGB(
//                                                               255, 95, 95, 95),
//                                                         )),
//                                                     Text(
//                                                         (_weight + 2)
//                                                             .toStringAsFixed(0),
//                                                         style: const TextStyle(
//                                                           fontSize: 17,
//                                                           fontWeight:
//                                                               FontWeight.w500,
//                                                           color: Colors.grey,
//                                                         )),
//                                                   ],
//                                                 )),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       _weight--;
//                                                     });
//                                                   },
//                                                   icon: const Icon(
//                                                     Icons.remove,
//                                                     size: 25,
//                                                     color: Colors.lightBlue,
//                                                   ),
//                                                   iconSize: 20,
//                                                 ),
//                                                 IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       _weight++;
//                                                     });
//                                                   },
//                                                   icon: const Icon(
//                                                     Icons.add,
//                                                     size: 25,
//                                                     color: Colors.lightBlue,
//                                                   ),
//                                                   iconSize: 20,
//                                                 ),
//                                               ],
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child: Column(
//                                 children: [
//                                   const Padding(
//                                     padding: EdgeInsets.only(bottom: 5),
//                                     child: Align(
//                                       alignment: Alignment.centerLeft,
//                                       child: Text(
//                                         "Activity",
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.white,
//                                             fontSize: 16),
//                                       ),
//                                     ),
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         width: 65,
//                                         height: 75,
//                                         padding: const EdgeInsets.only(
//                                             left: 8, right: 8),
//                                         decoration: const BoxDecoration(
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(10)),
//                                             gradient: LinearGradient(
//                                               begin: Alignment.topRight,
//                                               end: Alignment.bottomLeft,
//                                               colors: [
//                                                 Color.fromARGB(
//                                                     255, 30, 102, 228),
//                                                 Color.fromARGB(
//                                                     255, 15, 58, 133),
//                                               ],
//                                             )),
//                                         child: const Image(
//                                           image: AssetImage(
//                                             'assets/icons/Activity.png',
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                           child: Column(
//                                         children: [
//                                           const Align(
//                                             alignment: Alignment.center,
//                                             child: Text(""),
//                                           ),
//                                           ActivitySlider(
//                                               changeActivity, _activity)
//                                         ],
//                                       ))
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             )
//                           ]),
//                         )),
//                     Expanded(
//                         flex: 2,
//                         child: Container(
//                             margin: const EdgeInsets.only(top: 50),
//                             decoration: const BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10),
//                                     bottomLeft: Radius.circular(10)),
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                   colors: [
//                                     Color.fromARGB(255, 7, 7, 53),
//                                     Color.fromARGB(255, 0, 0, 0),
//                                   ],
//                                 )),
//                             padding: const EdgeInsets.only(top: 10, bottom: 10),
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                     flex: 1,
//                                     child: Column(
//                                       children: const [
//                                         Padding(
//                                           padding: EdgeInsets.only(bottom: 5),
//                                           child: Text("Height",
//                                               style: TextStyle(
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 16,
//                                                   color: Colors.white)),
//                                         ),
//                                         Image(
//                                           image: AssetImage(
//                                             'assets/icons/height.png',
//                                           ),
//                                           height: 45,
//                                           color: Colors.blue,
//                                         )
//                                       ],
//                                     )),
//                                 Expanded(
//                                     flex: 5,
//                                     child: RotatedBox(
//                                         quarterTurns: 1,
//                                         child: SliderLabelWidget(
//                                             onChange: changeHeight))),
//                               ],
//                             )))
//                   ],
//                 )),
//             Expanded(
//                 flex: 2,
//                 child: Center(
//                     child: Container(
//                   padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
//                   decoration: const BoxDecoration(
//                       color: Color.fromARGB(255, 11, 10, 26),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(50),
//                           topRight: Radius.circular(50))),
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(bottom: 10),
//                         child: FloatingActionButton(
//                           backgroundColor: Colors.red,
//                           onPressed: () => {calculateBMI(context)},
//                           child: const Icon(
//                             Icons.calculate_outlined,
//                             size: 30,
//                           ),
//                         ),
//                       ),
//                       const Text(
//                         "Calculate",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, color: Colors.white),
//                       )
//                     ],
//                   ),
//                 )))
//           ],
//         ),
//       )),
//     );
//   }

//   void changeHeight(var value) {
//     setState(() {
//       _height = value;
//     });
//   }

//   void calculateBMI(context) {
//     double height = _height / 100;
//     double weight = _weight;
//     int age = _age;
//     double activity = _activity;
//     double heightSquare = height * height;
//     double result = weight / heightSquare;
//     double calories = 0;

//     print({height, weight, age, caActivities[activity.toInt()]});

//     calories = _sex
//         ? (13.397 * weight) + (4.799 * _height) - (5.677 * age) + 88.362
//         : (9.247 * weight) + (3.098 * _height) - (4.330 * age) + 447.593;
//     calories = calories * caActivities[activity.toInt()];
//     setState(() {
//       _bmi = result;
//     });
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) =>
//               BmiResult(const Key('bmi_result'), result, calories),
//         ));
//   }

//   void changeActivity(var value) {
//     setState(() {
//       _activity = value;
//     });
//   }
// }

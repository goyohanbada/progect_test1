// // ignore_for_file: avoid_print
// import 'package:bottom_picker/bottom_picker.dart';
// import 'package:bottom_picker/resources/arrays.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '알빠노',
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//       home: Scaffold(
//         body: ExampleApp(),
//       ),
//     );
//   }
// }
//
// class ExampleApp extends StatelessWidget {
//
//   final buttonWidth = 300.0;
//   final myController = TextEditingController();
//
//   @override
//   //약속 시간 설정
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xffF6F2F2),
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openDatePicker(context);
//               },
//               child: Text('약속일'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: ElevatedButton(
//               onPressed: () {
//                 _openTimePicker(context);
//               },
//               child: Text('약속시간'),
//             ),
//           ),
//           SizedBox(
//             width: buttonWidth,
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: '벌금',
//             ),
//               controller: myController,
//             )
//           ),
//         ],
//       ),
//     );
//   }
//
//   //약속일
//   void _openDatePicker(BuildContext context) {
//     BottomPicker.date(
//       title: '약속일을 설정해주세요',
//       dateOrder: DatePickerDateOrder.dmy,
//       pickerTextStyle: TextStyle(
//         color: Colors.black,
//         fontWeight: FontWeight.bold,
//         fontSize: 12,
//       ),
//       titleStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.orange,
//       ),
//       onChange: (index) {
//         print(index);
//       },
//       onSubmit: (index) {
//         print(index);
//       },
//       bottomPickerTheme: BottomPickerTheme.plumPlate,
//     ).show(context);
//   }
//
//   //약속시간
//   void _openTimePicker(BuildContext context) {
//     BottomPicker.time(
//       title: '약속시간을 설정해주세요',
//       titleStyle: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.orange,
//       ),
//       onSubmit: (index) {
//         print(index);
//       },
//       onClose: () {
//         print('Picker closed');
//       },
//       bottomPickerTheme: BottomPickerTheme.orange,
//       use24hFormat: true,
//     ).show(context);
//   }
//
// }

import 'package:flutter/material.dart';
import 'package:google_maps_flutter_tutorial/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
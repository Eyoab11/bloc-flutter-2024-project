// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Addplan(),
//   ));
// }

// class Addplan extends StatefulWidget {
//   const Addplan({Key? key}) : super(key: key);

//   @override
//   _AddplanState createState() => _AddplanState();
// }

// class _AddplanState extends State<Addplan> {
//   DateTime? selectedDate;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text(
//           'Add Plans',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         iconTheme: IconThemeData(color: Colors.white),
//         centerTitle: true,
//       ),
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Text(
//                 'Add Your Plans',
//                 style: TextStyle(
//                   color: Colors.orange,
//                   fontSize: 40.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               style: TextStyle(color: Colors.white),
//               decoration: InputDecoration(
//                 labelText: 'Task',
//                 labelStyle: TextStyle(color: Colors.white),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.orange),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.orange),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             GestureDetector(
//               onTap: () {
//                 _selectDate(context);
//               },
//               child: AbsorbPointer(
//                 child: TextFormField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                     labelText: 'Date',
//                     labelStyle: TextStyle(color: Colors.white),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.orange),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.orange),
//                     ),
//                   ),
//                   keyboardType: TextInputType.datetime,
//                   controller: TextEditingController(
//                     text: selectedDate != null
//                         ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
//                         : '',
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               style: TextStyle(color: Colors.white),
//               decoration: const InputDecoration(
//                 labelText: 'Reps',
//                 labelStyle: TextStyle(color: Colors.white),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.orange),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.orange),
//                 ),
//               ),
//               keyboardType: TextInputType.number,
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               style: TextStyle(color: Colors.white),
//               decoration: InputDecoration(
//                 labelText: 'Sets',
//                 labelStyle: TextStyle(color: Colors.white),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.orange),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.orange),
//                 ),
//               ),
//               keyboardType: TextInputType.number,
              
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Submit'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }
// }

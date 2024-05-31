// import 'package:anbessafit/presentation/screens/signin_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:icons_plus/icons_plus.dart';
// import 'package:anbessafit/presentation/widgets/custom_scaffold.dart';
// import 'package:anbessafit/presentation/screens/gender_selection_screen.dart';

// void main() {
//   return runApp(MaterialApp());
// }

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formSignUpKey = GlobalKey<FormState>();
//   bool agreeToTerms = false;

//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//       child: Column(
//         children: [
//           Expanded(
//             flex: 1,
//             child: SizedBox(
//               height: 10,
//             ),
//           ),
//           Expanded(
//             flex: 7,
//             child: Container(
//               padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40.0),
//                   topRight: Radius.circular(40.0),
//                 ),
//               ),
//               child: SingleChildScrollView(
//                 child: Form(
//                   key: _formSignUpKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       RichText(
//                        text: TextSpan(
//                        style: TextStyle(
//                        fontSize: 30.0,
//                        fontWeight: FontWeight.w900,
//                        ),
//                     children: [
//                        TextSpan(
//                           text: ' Welcome to Anbessa ',
//                           style: TextStyle(
//                           color: Colors.white,
//                        ),
//                       ),
//                        TextSpan(
//                          text: 'Fit',
//                          style: TextStyle(
//                            color: Colors.orange,
//                           ),
//                         ),
//                      ],
//                     ) ,
//                   ),
//                   SizedBox(height: 10.0),
//                     TextFormField(
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                        validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter Full name';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'Full name',
//                           labelStyle: TextStyle(color: Colors.white),
//                           hintText: 'Enter Your Full Name',
//                           hintStyle: TextStyle(
//                             color: Colors.white,
//                           ),
                          
//                           border: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black12,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//                       TextFormField(
//                         style: TextStyle(
//                         color: Colors.white,
//                       ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter Email';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'Email',
//                           labelStyle: TextStyle(color: Colors.white),
//                           hintText: 'Enter Email',
//                           hintStyle: TextStyle(
//                             color: Colors.white,
//                           ),
//                           border: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black12,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//                       TextFormField(
//                         style: TextStyle(
//                         color: Colors.white,
//                       ),
//                         obscureText: true,
//                         obscuringCharacter: '*',
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter password';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'Password',
//                           labelStyle: TextStyle(color: Colors.white),
//                           hintText: 'Enter Password',
//                           hintStyle: TextStyle(
//                             color: Colors.white,
//                           ),
//                           border: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.black12,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 25.0),
//                       Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                               Checkbox(
//                                  value: agreeToTerms,
//                                  onChanged: (bool? value) {
//                                      setState(() {
//                                        agreeToTerms = value ?? false;
//                                      });
//                                     },
//                                   ),
//                            const Text(
//                              'I agree to the terms',
//                               style: TextStyle(
//                                color: Colors.white,
//                              ),
//                            ),
//                           ],
//                         ),
//                       SizedBox(height: 25.0),
//                       SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             if (_formSignUpKey.currentState!.validate() && agreeToTerms) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text('Processing Data'),
//                                 ), 
//                               );
//                               Navigator.pushNamed(
//                                    context,'/GenderSelectionScreen');
                          
                                
//                             } else if (!agreeToTerms) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text('Please agree to the terms and conditions.'),
//                                 ),
//                               );
//                             }
//                           },
//                           child: const Text(
//                             'Sign Up',
//                           ),
//                            style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.orange,  // Set the background color to orange
//                          ),
                          
        
//                         ),
//                       ),
//                       SizedBox(height: 25.0),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Expanded(
//                             child: Divider(
//                               thickness: 0.7,
//                               color: Colors.white.withOpacity(0.5),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(
//                               vertical: 0,
//                               horizontal: 11,
//                             ),
//                             child: Text(
//                               'Sign up with',
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Divider(
//                               thickness: 0.7,
//                               color: Colors.white.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),SizedBox(height: 25.0),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Logo(Logos.facebook_f),
//                           Logo(Logos.google),
//                         ],
//                       ),
//                       SizedBox(height: 25.0),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Already have an account?",
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.pushNamed(
//                                 context, '/SignInScreen'
//                               );
//                             },
//                             child: Text(
//                               ' Sign In',
//                               style: TextStyle(
//                                 color: Colors.orange,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

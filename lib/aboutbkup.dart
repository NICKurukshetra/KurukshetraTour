// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
// import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
// import 'package:readmore/readmore.dart';

// import 'Header/appbar.dart';
// import 'Header/header.dart';

// const color = const Color(0xffb796d5f);

// class AboutUs extends StatefulWidget {
//   @override
//   State<AboutUs> createState() => _AboutUsState();
// }

// class _AboutUsState extends State<AboutUs> {
//   dynamic _chosenValue = "Welcome to the Kurukshetra Tourism App";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: DrawerMenu(),
//       appBar: Appbar(),
//       body: Container(
//         child: Column(children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 LineImage(), // call class in TourAppbar.dart file
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     width: double.infinity,
//                     child: SingleChildScrollView(
//                       child: Container(
//                         child: Column(
//                           children: [
//                             HeaderSinglePage(
//                                 maintitle: "About Us",
//                                 headerimage:
//                                     "https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2019/01/2019010428.jpg"),
//                             Container(
//                               margin: EdgeInsets.all(20),
//                               color: Colors.grey[300],
//                               child: DropdownButton<String>(
//                                 dropdownColor: Colors.white,
//                                 isExpanded: true,
//                                 focusColor: Colors.white,
//                                 value: _chosenValue,
//                                 //elevation: 5,
//                                 style: TextStyle(color: Colors.white),
//                                 iconEnabledColor: Colors.black,
//                                 items: <String>[
//                                   'Welcome to the Kurukshetra Tourism App',
//                                 ].map<DropdownMenuItem<String>>((String value) {
//                                   return DropdownMenuItem<String>(
//                                     value: value,
//                                     child: Column(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               left: 20, top: 10.0),
//                                           child: Text(
//                                             value,
//                                             style: TextStyle(
//                                               color: Colors.blue[700],
//                                               fontSize: 16,
//                                             ),
//                                           ),
//                                         ),

//                                         // Padding(
//                                         //   padding: const EdgeInsets.only(
//                                         //       top: 22),
//                                         //   child: Divider(
//                                         //     height: 1,
//                                         //     color: Colors.black,
//                                         //   ),
//                                         // ),
//                                       ],
//                                     ),
//                                   );
//                                 }).toList(),
//                                 // hint: Text(
//                                 //   "Please choose a langauage",
//                                 //   style: TextStyle(
//                                 //       color: Colors.black,
//                                 //       fontSize: 14,
//                                 //       fontWeight: FontWeight.w500),
//                                 // ),
//                                 onChanged: (dynamic value) {
//                                   setState(() {
//                                     _chosenValue = value;
//                                   });
//                                 },
//                               ),
//                             ),
//                             Container(
//                               color: Colors.grey[300],
//                               margin:
//                                   EdgeInsets.only(top: 8, left: 20, right: 20),
//                               child: Column(
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.all(20),
//                                     child: ReadMoreText(
//                                       'Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. According to the Hindu mythology, Kurukshetra is a vast area spread over 48 kos, which includes many pilgrimage places, temples and sacred ponds, with which many events/rituals associated with the Pandavas and the Kauravas and Mahabharata war have been related. Kurukshetra is closely related to its development with the rise of Aryan civilization and the sacred Saraswati. This is the land where Manusmriti was written by Rishi Manu and the compilation of Rigveda, Samaveda by the wise Rishis. The name of Kurukshetra was named after King Kuru. By which great sacrifices were made for the prosperity of this land and its people.',
//                                       style: TextStyle(
//                                           color: Colors.black, fontSize: 13),
//                                       trimLines: 9,
//                                       colorClickableText: Colors.blue[600],
//                                       trimMode: TrimMode.Line,
//                                       trimCollapsedText: '..(read more)',
//                                       trimExpandedText: ' (show less)',
//                                     ),
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.all(10),
//                                     child: Center(
//                                       child: Text(
//                                         'Happy Exploring',
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             color: Colors.blue[900]),
//                                       ),
//                                     ),
//                                   ),
//                                   Center(
//                                     child: Text(
//                                       'Deputy Commissioner ',
//                                       style: TextStyle(
//                                           color: Colors.grey[600],
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.only(bottom: 20),
//                                     child: Center(
//                                       child: Text(
//                                         'District Administration, Kurukshetra',
//                                         style: TextStyle(
//                                             fontSize: 10,
//                                             color: Colors.grey[600],
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 LineImage(), // call class in TourAppbar.dart file
//               ],
//             ),
//           ),
//         ]),
//       ),
//       // call class in TourAppbar.dart file
//       bottomNavigationBar: BottomNavigation(),
//     );
//   }
// }

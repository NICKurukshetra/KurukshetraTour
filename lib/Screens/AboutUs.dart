// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kurukshetra_tour/Screens/Footer/footer.dart';
import 'package:kurukshetra_tour/Screens/Header/Drawer.dart';
import 'package:readmore/readmore.dart';

import 'Header/appbar.dart';
import 'Header/header.dart';
import 'PlacesDetails/pdfview.dart';

const color = const Color(0xffb796d5f);

class AboutUs extends StatefulWidget {
  final String title;
  final String image;
  final bool svalue;
  String id;
  AboutUs(
      {required this.title,
      required this.image,
      required this.id,
      required this.svalue});
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String _chosenValue = "The Land of Righteousness ";
  int extravalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: Appbar(),
      body: Container(
        child: Column(children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LineImage(),

                // call class in TourAppbar.dart file
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            HeaderSinglePage(
                                maintitle: widget.title,
                                headerimage: widget.image),
                            Container(
                              color: Colors.grey[300],
                              margin:
                                  EdgeInsets.only(top: 8, left: 20, right: 20),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    child: ReadMoreText(
                                      'Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. According to the Hindu mythology, Kurukshetra is a vast area spread over 48 kos, which includes many pilgrimage places, temples and sacred ponds, with which many events/rituals associated with the Pandavas and the Kauravas and Mahabharata war have been related. Kurukshetra is closely related to its development with the rise of Aryan civilization and the sacred Saraswati. This is the land where Manusmriti was written by Rishi Manu and the compilation of Rigveda, Samaveda by the wise Rishis. The name of Kurukshetra was named after King Kuru. By which great sacrifices were made for the prosperity of this land and its people. \n  Kurukshetra is as old as the history of India. The history of the area in which Kurukshetra district lies can be traced back, howsoever dimly at times to the ancient Aryan Past. According to Dr. R.C. Majumdar, “it was a religion­cultural centre even before the immigration of the Aryans into India”. \n The area forming the part of Kurukshetra remained a part of Karnal District at the time of formation of Haryana State. Up to 1947, 5 districts viz. Hissar, Rohtak, Karnal, Ambala and Gurgaon existed in Haryana were the part of Punjab. In 1948 with the creation of PEPSU Mahendragarh district became one of the 19 districts of the then Punjab, and the 6th district in the Haryana Territory. With the creation of Haryana State, Jind district comes into existence on 1st Nov. 1966. Thereafter Bhiwani and Sonipat districts were created on Dec 22, 1972. Karnal District was bifurcated on January 23, 1973, and another district Kurukshetra was carved out. \n  Kurukshetra lies on the main Delhi Ambala Railway line about 160 kilometres North of Delhi, 34 km North of Karnal and 40 km South of Ambala.  Kurukshetra is a place known all over India for its great cultural heritage. Markanda and Saraswati are the important rivers of the district. According to Manu, the tract between the old sacred rivers Saraswati and Drishadvati in Kurukshetra was known as Brahmavarta. Kurukshetra along with Karnal and Kaithal districts is known as the ‘Rice Bowl of India’ and famous for Basmati Rice. The soil is generally alluvial, loam and clay do not constitute the average texture of the soil.',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                      trimLines: 9,
                                      colorClickableText: Colors.blue[600],
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: '..(read more)',
                                      trimExpandedText: ' (show less)',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              color: Colors.grey[300],
                              child: DropdownButton<String>(
                                dropdownColor: Colors.white,
                                isExpanded: true,
                                focusColor: Colors.white,
                                value: _chosenValue,
                                //elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  'The Land of Righteousness ',
                                  'Solar Worship',
                                  'Sarasvati The Lifeline of Ancient Kurukshetra',
                                  'Sufi Chronicles',
                                  '48 Kos Kurukshetra Bhumi',
                                  'Buddhist Saga',
                                  'Imprints of Sikh Gurus',
                                  'Sthanvisvara the Capital of Harshavardhana',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Icon(
                                                  Icons.circle,
                                                  color: Colors.red,
                                                  size: 20,
                                                ),
                                              ),
                                              Text(
                                                value,
                                                style: TextStyle(
                                                  color: Colors.black45,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Padding(
                                        //   padding: const EdgeInsets.only(
                                        //       top: 22),
                                        //   child: Divider(
                                        //     height: 1,
                                        //     color: Colors.black,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                // hint: Text(
                                //   "Please choose a langauage",
                                //   style: TextStyle(
                                //       color: Colors.black,
                                //       fontSize: 14,
                                //       fontWeight: FontWeight.w500),
                                // ),
                                onChanged: (String? value) {
                                  setState(() {
                                    _chosenValue = value!;
                                    if (value == 'The Land of Righteousness') {
                                      extravalue = 0;
                                    }
                                    if (value == 'Solar Worship') {
                                      extravalue = 1;
                                    }
                                    if (value ==
                                        'Sarasvati The Lifeline of Ancient Kurukshetra') {
                                      extravalue = 2;
                                    }
                                    if (value == 'Sufi Chronicles') {
                                      extravalue = 3;
                                    }
                                    if (value == '48 Kos Kurukshetra Bhumi') {
                                      extravalue = 4;
                                    }
                                    if (value == 'Buddhist Saga') {
                                      extravalue = 5;
                                    }
                                    if (value == 'Imprints of Sikh Gurus') {
                                      extravalue = 6;
                                    }
                                    if (value ==
                                        'Sthanvisvara the Capital of Harshavardhana') {
                                      extravalue = 7;
                                    }
                                  });
                                },
                              ),
                            ),
                            Container(
                              //  color: Colors.grey[300],
                              margin:
                                  EdgeInsets.only(top: 8, left: 20, right: 20),
                              child: Column(
                                children: [
                                  extravalue == 0
                                      ? ElevatedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(
                                              const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PdfView(
                                                          'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/03/2022032956.pdf')));
                                            });
                                          },
                                          child:
                                              Text("The Land of Righteousness"),
                                        )
                                      : Container(),
                                  extravalue == 1
                                      ? ElevatedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(
                                              const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PdfView(
                                                          'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/03/2022032826.pdf')));
                                            });
                                          },
                                          child: Text("Solar Worship"),
                                        )
                                      : Container(),
                                  extravalue == 2
                                      ? ElevatedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(
                                              const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PdfView(
                                                          'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/03/2022032881.pdf')));
                                            });
                                          },
                                          child: Text(
                                              "Sarasvati The Lifeline of Ancient Kurukshetra"),
                                        )
                                      : Container(),
                                  extravalue == 3
                                      ? ElevatedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(
                                              const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PdfView(
                                                          'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/03/2022032945.pdf')));
                                            });
                                          },
                                          child: Text("Sufi Chronicles"),
                                        )
                                      : Container(),
                                  extravalue == 4
                                      ? ElevatedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(
                                              const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PdfView(
                                                          'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/03/2022032810.pdf')));
                                            });
                                          },
                                          child:
                                              Text("48 Kos Kurukshetra Bhumi"),
                                        )
                                      : Container(),
                                  extravalue == 5
                                      ? ElevatedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(
                                              const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PdfView(
                                                          'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/03/2022032951.pdf')));
                                            });
                                          },
                                          child: Text("Buddhist Saga"),
                                        )
                                      : Container(),
                                  extravalue == 6
                                      ? ElevatedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(
                                              const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PdfView(
                                                          'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/03/2022032894.pdf')));
                                            });
                                          },
                                          child: Text("Imprints of Sikh Gurus"),
                                        )
                                      : Container(),
                                  extravalue == 7
                                      ? ElevatedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(
                                              const BorderSide(
                                                color: Colors.red,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => PdfView(
                                                          'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2022/03/2022032996.pdf')));
                                            });
                                          },
                                          child: Text(
                                              "Sthanvisvara the Capital of Harshavardhana"),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                LineImage(), // call class in TourAppbar.dart file
              ],
            ),
          ),
        ]),
      ),
      // call class in TourAppbar.dart file
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

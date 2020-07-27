import 'package:flutter/material.dart';

class CodeYazgylary extends StatelessWidget {
  final List<String> atlary = <String>[
    '1 Print',
    '2 Input',
    '3 Arifmetiki Amallar I',
    '4 Arifmetiki Amallar II',
    '5 Data Types',
    '6 If/Else/Elif',
    '7 While',
    '8 Funksiýalar',
    '9 Return',
    '10 Kalkulýator Ýazmak',
    '11 Üçburçlygy Barlamak',
    '12 List\'ler',
    '13 Append/Remove',
    '14 Dictionary',
    '15 Tuple',
    '16 Randint',
    '17 Class\'lar',
    '18 Bank/ATM System',
    '19 Duşman vs Oýunçy',
    '20 Tkinter',
    '21 Tkinterde Kalkulýator',
    '22 Hereketli Ýazgy',
    '23 Sapaklaryň Ýetişigi',
    '24 Hasaplama Ulgamy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('CODE ÝAZGYLARY'),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.limeAccent,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/k1');
                },
                child: Text(
                  '${atlary[index]}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: atlary.length,
      ),
    );
  }
}

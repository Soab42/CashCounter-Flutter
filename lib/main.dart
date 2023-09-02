import 'package:flutter/material.dart';

class CashCounterApp extends StatefulWidget {
  const CashCounterApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CashCounterAppState createState() => _CashCounterAppState();
}

class _CashCounterAppState extends State<CashCounterApp> {
  TextEditingController noteController1000 = TextEditingController();
  TextEditingController noteController500 = TextEditingController();
  TextEditingController noteController200 = TextEditingController();
  TextEditingController noteController100 = TextEditingController();
  TextEditingController noteController50 = TextEditingController();
  TextEditingController noteController20 = TextEditingController();
  TextEditingController noteController10 = TextEditingController();
  TextEditingController noteController5 = TextEditingController();
  TextEditingController noteController2 = TextEditingController();
  TextEditingController noteController1 = TextEditingController();
  TextEditingController noteControllerExtra = TextEditingController();
  TextEditingController noteControllerTargetValue = TextEditingController();

  int result1000 = 0;
  int result500 = 0;
  int result200 = 0;
  int result100 = 0;
  int result50 = 0;
  int result20 = 0;
  int result10 = 0;
  int result5 = 0;
  int result2 = 0;
  int result1 = 0;
  int resultExtra = 0;
  int totalResult = 0;
  int targetValue = 0;
  int diffValue = 0;

  void calculateResult() {
    int notes1000 = int.tryParse(noteController1000.text) ?? 0;
    int notes500 = int.tryParse(noteController500.text) ?? 0;
    int notes200 = int.tryParse(noteController200.text) ?? 0;
    int notes100 = int.tryParse(noteController100.text) ?? 0;
    int notes50 = int.tryParse(noteController50.text) ?? 0;
    int notes20 = int.tryParse(noteController20.text) ?? 0;
    int notes10 = int.tryParse(noteController10.text) ?? 0;
    int notes5 = int.tryParse(noteController5.text) ?? 0;
    int notes2 = int.tryParse(noteController2.text) ?? 0;
    int notes1 = int.tryParse(noteController1.text) ?? 0;
    int notesExtra = int.tryParse(noteControllerExtra.text) ?? 0;
    int targetValue = int.tryParse(noteControllerTargetValue.text) ?? 0;

    setState(() {
      result1000 = 1000 * notes1000;
      result500 = 500 * notes500;
      result200 = 200 * notes200;
      result100 = 100 * notes100;
      result50 = 50 * notes50;
      result20 = 20 * notes20;
      result10 = 10 * notes10;
      result5 = 5 * notes5;
      result2 = 2 * notes2;
      result1 = 1 * notes1;
      resultExtra = notesExtra;
      totalResult = result1000 +
          result500 +
          result200 +
          result100 +
          result50 +
          result20 +
          result10 +
          result5 +
          result2 +
          result1 +
          resultExtra;
      diffValue = totalResult - targetValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          // elevation: 0,
          title: const Text(
            'Cash Counter',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.tealAccent),
          ),
          centerTitle: true,
          toolbarHeight: 50.0,
          titleSpacing: 2.0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Colors.cyan,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '1000',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController1000,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result1000',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '500',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController500,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result500',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '200',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController200,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result200',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController100,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result100',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '50',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController50,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result50',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '20',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController20,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result20',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController10,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result10',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController5,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result5',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController2,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result2',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteController1,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$result1',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: const Text(
                              'Extra',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.clear),
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              maxLength: 6,
                              controller: noteControllerExtra,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              onChanged: (value) {
                                calculateResult();
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.monetization_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              '$resultExtra',
                              style: const TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            color: Colors.black12,
                            alignment: Alignment.center,
                            child: const Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            color: Colors.black12,
                            alignment: Alignment.center,
                            child: Text(
                              '$totalResult',
                              style: const TextStyle(
                                  color: Colors.tealAccent,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            color: Colors.black12,
                            alignment: Alignment.center,
                            child: const Text(
                              'Target Total ',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            color: Colors.black12,
                            alignment: Alignment.center,
                            child: TextField(
                              controller: noteControllerTargetValue,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              onChanged: (value) {
                                calculateResult();
                              },
                              style: const TextStyle(
                                  color: Colors.tealAccent,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            color: Colors.black12,
                            alignment: Alignment.center,
                            child: const Text(
                              'Total Diff',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            color: diffValue >= 0 ? Colors.black12 : Colors.redAccent,
                            alignment: Alignment.center,
                            child: Text(
                              '$diffValue',
                              style:  TextStyle(
                                  color: diffValue > 0
                                      ? Colors.orange
                                      : diffValue < 0
                                      ? Colors.black
                                      : Colors.tealAccent,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 49,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Developed by Soab Mahmud Syfuddhin",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(const CashCounterApp());

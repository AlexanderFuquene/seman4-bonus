import 'package:flutter/material.dart';
import 'package:bonus/pages/result.page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _estatura = 169, _peso = 58, _edad = 27;
  bool _genero = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Calculadora IMC')), body: _body());
  }

  Widget _body() {
    return Column(children: [
      Expanded(
          child: Row(children: [
        Expanded(
            child: Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(_genero
                            ? Colors.blueGrey[800]
                            : Colors.blueGrey[900]),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    onPressed: () {
                      setState(() {
                        _genero = true;
                      });
                    },
                    child: Column(children: [
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child:
                                  Image(image: AssetImage('assets/male.png')))),
                      Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text('Hombre', style: TextStyle(fontSize: 18)))
                    ])))),
        Expanded(
            child: Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(_genero
                            ? Colors.blueGrey[900]
                            : Colors.blueGrey[800]),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    onPressed: () {
                      setState(() {
                        _genero = false;
                      });
                    },
                    child: Column(children: [
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Image(
                                  image: AssetImage('assets/female.png')))),
                      Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text('Mujer', style: TextStyle(fontSize: 18)))
                    ]))))
      ])),
      Expanded(
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey,
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Estatura', style: TextStyle(fontSize: 20)),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('$_estatura',
                          style: TextStyle(
                              fontSize: 48, fontWeight: FontWeight.bold)),
                      Baseline(
                          baseline: 35,
                          baselineType: TextBaseline.alphabetic,
                          child: Text('cm', style: TextStyle(fontSize: 18)))
                    ]),
                    SliderTheme(
                        data: SliderThemeData(
                            thumbColor: Colors.pink,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.blueGrey),
                        child: Slider(
                            value: _estatura.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                _estatura = newValue.round();
                              });
                            }))
                  ]))),
      Expanded(
          child: Row(children: [
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Peso', style: TextStyle(fontSize: 20)),
                      Text('$_peso',
                          style: TextStyle(
                              fontSize: 44, fontWeight: FontWeight.bold)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.blueGrey),
                              onPressed: () {
                                setState(() {
                                  _peso--;
                                });
                              },
                              child: Text('-',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    primary: Colors.blueGrey),
                                onPressed: () {
                                  setState(() {
                                    _peso++;
                                  });
                                },
                                child: Text('+',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold)))
                          ])
                    ]))),
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Edad', style: TextStyle(fontSize: 20)),
                      Text('$_edad',
                          style: TextStyle(
                              fontSize: 44, fontWeight: FontWeight.bold)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    primary: Colors.blueGrey),
                                onPressed: () {
                                  setState(() {
                                    _edad--;
                                  });
                                },
                                child: Text('-',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold))),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    primary: Colors.blueGrey),
                                onPressed: () {
                                  setState(() {
                                    _edad++;
                                  });
                                },
                                child: Text('+',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold)))
                          ])
                    ])))
      ])),
      Container(
          height: 90,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.pink)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                    edad: _edad,
                                    estatura: _estatura,
                                    peso: _peso,
                                    genero: _genero,
                                  )));
                    },
                    child: Text('Calcular', style: TextStyle(fontSize: 28))))
          ]))
    ]);
  }
}

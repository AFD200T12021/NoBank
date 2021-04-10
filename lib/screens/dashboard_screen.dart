import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nubank/components/saldo_cartao.dart';

class DashboardScreen extends StatefulWidget {

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool saldoHabilitado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(saldoHabilitado ? Icons.remove_red_eye_outlined : Icons.remove_red_eye),
              tooltip: 'Habilitar Saldo',
              onPressed: () {
                setState(() {
                  saldoHabilitado = !saldoHabilitado;
                });
                // handle the press
              },
            ),
          ],
          elevation: 0.0,
          title: Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
              'https://cdn-images-1.medium.com/max/184/1*vGKXRzNV5Ts6P4AGuIIeAw@2x.png',
              height: 46,
              width: 46,
            ),
            SizedBox(
              width: 5,
            ),
            Text('Fulano')
          ])),
        ),
        body: Container(
          child: Column(
            children: [
              SaldoCartao(saldoHabilitado),
            ],
          ),
        ),
        floatingActionButton: Container(
          alignment: Alignment.bottomCenter,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 100.0,
              reverse: false,
              enableInfiniteScroll: false,
            ),
            items: [
              {'icon': Icons.person, 'label': 'Indicar Amigos 1'},
              {'icon': Icons.person, 'label': 'Indicar Amigos 2'},
              {'icon': Icons.person, 'label': 'Indicar Amigos 3'},
              {'icon': Icons.person, 'label': 'Indicar Amigos 4'},
              {'icon': Icons.person, 'label': 'Indicar Amigos 5'},
              {'icon': Icons.person, 'label': 'Indicar Amigos 6'}
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber
                      ),
                      child: Column(
                          children:[
                            Icon(Icons.person),
                            Text('Indicar Amigos', style: TextStyle(fontSize: 16.0),)
                          ]
                      )
                  );
                },
              );
            }).toList(),
          ),
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_nubank/screens/extrato_screen.dart';

class SaldoCartao extends StatelessWidget {

  final bool saldohabilitado;

  SaldoCartao(this.saldohabilitado);

  void onTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return ExtratoScreen();
    })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.credit_card),
                Text('Cartão de Crédito')
              ],
            ),
            Row(
              children: [
                Text('Fatura atual')
              ],
            ),
            saldohabilitado ?
            Row(
              children: [
                Text('R\$ 400,00',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
                :
            Container(
              height: 25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                Text('Vencimento em: 14 FEV',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: null,
                    child: Text('Pagar'))
              ],
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.car_repair),
                      Column(
                          children: [
                            Text('Última compra mais recente em:'),
                            Text('Uber no valor de R\$ 8,00'),
                          ]
                      ),
                      InkWell(
                          onTap: () => onTap(context),
                          child:
                          Icon(Icons.arrow_forward)
                      ),
                    ])
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:expenses_app/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final List<Transactions> _transactions = [
    Transactions(
        id: '123',
        title: 'okaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        value: 1500.000,
        date: DateTime.now()),
    Transactions(id: '44353', title: 'OK 2', value: 23.00, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text('Expenses')),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Card(
                  child: Text('Graphic'),
                  elevation: 8,
                ),
              ),
              ..._transactions.map(
                (transaction) => Card(
                  key: Key(transaction.id),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(4),
                              child: Text(
                                  NumberFormat.currency(
                                          locale: "pt-br", symbol: 'R\$')
                                      .format(transaction.value),
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  DateFormat('d MMM y')
                                      .format(transaction.date),
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 200,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                transaction.title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  elevation: 5,
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Nova transação',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[600],
                            fontWeight: FontWeight.w600),
                      ),
                      TextField(
                        decoration: InputDecoration(label: Text('Título')),
                      ),
                      TextField(
                        decoration: InputDecoration(label: Text('Valor (R\$)')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            onPressed: () => {},
                            child: Icon(Icons.add, size: 40),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                elevation: 5,
              )
            ],
          )),
    );
  }
}

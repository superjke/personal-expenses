import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final String moneySymbol = '£';

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (_, index) {
          return Card(
            margin: EdgeInsets.all(4),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 140,
                  height: 70,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 10, 5, 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      border: Border.all(
                        color: Theme.of(context).primaryColorDark,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '$moneySymbol${transactions[index].amount.toStringAsFixed(2)}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transactions[index].title,
                        style: Theme.of(context).textTheme.title,
                      ),
                      Text(
                          DateFormat.yMMMd()
                              .addPattern('jms')
                              .format(transactions[index].date),
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}

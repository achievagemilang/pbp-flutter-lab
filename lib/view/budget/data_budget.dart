import 'package:counter_7/view/budget/form_budget.dart';
import 'package:counter_7/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _MyDataState();
}

class _MyDataState extends State<DataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Data Budget"),
        ),
        drawer: DrawerApp(),
        body: ListView.builder(
          itemCount: dataBudget.length,
          itemBuilder: (context, index) {
            final item = dataBudget[index];
            return Card(
              child: ListTile(
                title: Text(
                  item.judul,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.nominal.toString(),
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        item.date.toString().substring(0, 10),
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        item.tipe,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ]),
              ),
            );
          },
        ));
  }
}

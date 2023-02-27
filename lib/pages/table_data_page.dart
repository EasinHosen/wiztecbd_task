import 'package:flutter/material.dart';
import 'package:wiztecbd_task/widgets/drawer_widget.dart';
import 'package:wiztecbd_task/widgets/dues_row.dart';
import 'package:wiztecbd_task/widgets/purchase_row.dart';
import 'package:wiztecbd_task/widgets/return_row.dart';

import '../widgets/payment_row.dart';

class TableDataPage extends StatelessWidget {
  const TableDataPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const DuesRow(),
              const PurchaseRow(),
              const PaymentRow(),
              const ReturnRow(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.add_circle),
                    onPressed: () {},
                    label: const Text(
                      'Pay the balance',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

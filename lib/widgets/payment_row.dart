import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'dynamic_single_item_row.dart';
import 'dynamic_two_item_row.dart';
import 'header_container.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderContainer(title: 'Payment'),
                //top ends
                CustomContainer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Invoice Date: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '01 january 2022',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Invoice No. :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            SizedBox(width: 12),
                            Text(
                              '5386328',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //invoice date part ends
                CustomContainer(
                  child: Column(
                    children: const [
                      DynamicTwoItemRow(
                        t1: 'Discount',
                        t2: 'Vat',
                        a1: 0,
                        a2: 0,
                      )
                    ],
                  ),
                ),
                //discount vat ends
                CustomContainer(
                  child: Column(
                    children: const [
                      DynamicTwoItemRow(
                        t1: 'Grand Total',
                        t2: 'Previous Due',
                        a1: 0,
                        a2: 30000,
                      )
                    ],
                  ),
                ),
                //grand total previous due ends
                CustomContainer(
                  child: Column(
                    children: const [
                      DynamicTwoItemRow(
                        t1: 'Total Amount',
                        t2: 'Total Payment',
                        a1: 30000,
                        a2: 10000,
                      )
                    ],
                  ),
                ),
                //total amount, payment ends
                CustomContainer(
                  child: Column(
                    children: const [
                      DynamicSingleItemRow(
                        t1: 'Remaining Balance',
                        a1: 20000,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Due',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('৳20000',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

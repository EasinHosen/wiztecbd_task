import 'package:flutter/material.dart';
import 'package:wiztecbd_task/widgets/custom_container.dart';
import 'package:wiztecbd_task/widgets/dynamic_single_item_row.dart';
import 'package:wiztecbd_task/widgets/dynamic_two_item_row.dart';
import 'package:wiztecbd_task/widgets/header_container.dart';
import 'package:wiztecbd_task/widgets/product_details_part.dart';

class PurchaseRow extends StatelessWidget {
  const PurchaseRow({Key? key}) : super(key: key);

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
                const HeaderContainer(title: 'Purchase'),
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
                      ProductDetailsPart(qty: 200, price: 200, total: 40000),
                      ProductDetailsPart(qty: 20, price: 300, total: 6000),
                      ProductDetailsPart(qty: 20, price: 200, total: 4000),
                    ],
                  ),
                ),
                //product details ends
                const CustomContainer(
                  child: DynamicTwoItemRow(
                    t1: 'Discount',
                    t2: 'Vat',
                    a1: 0,
                    a2: 0,
                  ),
                ),
                //discount vat ends
                const CustomContainer(
                  child: DynamicTwoItemRow(
                    t1: 'Grand Total',
                    t2: 'Previous Due',
                    a1: 50000,
                    a2: 20000,
                  ),
                ),
                //grand total previous due ends
                const CustomContainer(
                  child: DynamicTwoItemRow(
                    t1: 'Total Amount',
                    t2: 'Total Payment',
                    a1: 70000,
                    a2: 40000,
                  ),
                ),
                //total amount, payment ends
                const CustomContainer(
                  child: DynamicSingleItemRow(
                    t1: 'Remaining Balance',
                    a1: 30000,
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
                    Text('৳30000',
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

import 'package:flutter/material.dart';

class ProductDetailsPart extends StatelessWidget {
  const ProductDetailsPart(
      {Key? key, required this.qty, required this.price, required this.total})
      : super(key: key);

  final num qty, price, total;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Test product 01',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text('$qty pcs X $price'),
                ],
              ),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                          width: 1, color: Theme.of(context).primaryColor)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18.0, horizontal: 6),
                  child: Text(
                    '৳$total',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                ))),
      ],
    );
  }
}

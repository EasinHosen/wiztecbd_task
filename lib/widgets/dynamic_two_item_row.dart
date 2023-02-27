import 'package:flutter/material.dart';

class DynamicTwoItemRow extends StatelessWidget {
  const DynamicTwoItemRow(
      {Key? key,
      required this.t1,
      required this.t2,
      required this.a1,
      required this.a2})
      : super(key: key);

  final String t1, t2;
  final num a1, a2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t1,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                t2,
                style: const TextStyle(fontWeight: FontWeight.bold),
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
                      const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '৳$a1',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '৳$a2',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ))),
      ],
    );
  }
}

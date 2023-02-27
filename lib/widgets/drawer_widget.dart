import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(12),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Demo Limited Company',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ExpansionTile(
              title: Text('Purchase'),
              leading: Icon(Icons.shopping_cart),
              childrenPadding: EdgeInsets.only(left: 70),
              children: [
                ListTile(title: Text('Purchase List')),
                ListTile(title: Text('Order List')),
                ListTile(title: Text('VAT List')),
                ListTile(title: Text('Product Unit')),
                ListTile(title: Text('Purchase Report')),
              ],
            ),
            const ExpansionTile(
              title: Text('Sell'),
              leading: Icon(Icons.shopping_bag),
            ),
            const ExpansionTile(
              title: Text('Stock / Inventory'),
              leading: Icon(Icons.warehouse),
            ),
          ],
        ),
      ),
    );
  }
}

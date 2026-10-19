import 'package:flutter/material.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {
  List<String> products = ["Bed", "Sofa", "Chair", "Table"];

  List<String> productDetail = [
    "Bed is a piece of furniture that is used for.",
    "Sofa is a piece of furniture that is ",
    "Chair is a piece of furniture that",
    "Table is a piece of furniture that is used for eating",
  ];

  List<int> price = [1700, 2400, 3600, 5400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // Listview Builder
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(products[index][0])),
            title: Text(products[index]),
            subtitle: Text(productDetail[index]),
            trailing: Text("Rp ${price[index].toString()}"),
          );

          // with card
          //   Card(
          //   elevation: 0,
          //   color: Colors.grey[200],
          //   margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          //   child: ListTile(
          //     leading: CircleAvatar(child: Text(products[index][0])),
          //     title: Text(products[index]),
          //     subtitle: Text(productDetail[index]),
          //     trailing: Text("Rp ${price[index].toString()}"),
          //   ),
          // );
        },

        // Static ListView
        // ListTile(
        //   leading: Icon(Icons.account_balance_wallet_rounded),
        //   title: Text("1.000.000"),
        //   subtitle: Text("Saldo Anda"),
        //   trailing: Icon(Icons.arrow_forward_ios),
        // ),
        // ListTile(
        //   leading: Icon(Icons.send),
        //   title: Text("Kirim Uang"),
        //   subtitle: Text("Transfer ke rekening lain"),
        //   trailing: Icon(Icons.arrow_forward_ios),
        //   onTap: () {
        //     print("Kirim Uang");
        //   },
        // ),
        // ListTile(
        //   leading: Icon(Icons.move_to_inbox_rounded),
        //   title: Text("Terima Uang"),
        //   subtitle: Text("Dari rekening lain"),
        //   trailing: Icon(Icons.arrow_forward_ios),
        // ),
        // ListTile(
        //   leading: Icon(Icons.account_balance_wallet_rounded),
        //   title: Text("1.000.000"),
        //   subtitle: Text("Saldo Anda"),
        //   trailing: Icon(Icons.arrow_forward_ios),
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<Widget> lvTest = [];

    for (int i = 0; i < 30; i++) {
      lvTest.add(Text("sdadasdasdasdsadasda".toString()));
    }
    //ads
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.orange,
          leading: Icon(
            Icons.kayaking_outlined,
            color: Colors.orange,
            size: 50,
          ),
          title: Text(
            "KBNK",
            style: TextStyle(
              color: Colors.teal[800],
              fontSize: 20,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.circle_notifications_outlined,
                size: 35,
                color: Colors.teal[800],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.exit_to_app_outlined,
                size: 35,
                color: Colors.teal[800],
              ),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffe0f2f1), Color(0xffffcc80)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.topRight)),
          ),
        ),
        body: Center(
          child: Stack(
            children: [
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                height: 120,
                                width: 120,
                                child: Material(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.account_circle_outlined,
                                      size: 100,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "ALEXA PRATAMA GUNDARIA",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Text("No E-Wallet: 011011010"),
                            const Text("Saldo anda: Rp. 80.000.000"),
                          ],
                        ),
                      ) //untuk nama norek dan saldo
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.black),
                        margin: EdgeInsets.all(10),
                        height: 1,
                        child: Text(
                            "__________________________________________________________"),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView(shrinkWrap: true, children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildCard(Icons.monetization_on_outlined,
                                  "Transfer", 50),
                              buildCard(Icons.account_balance_wallet_outlined,
                                  "E-wallet", 50),
                              buildCard(
                                  Icons.payment_outlined, "Pembayaran", 50),
                              buildCard(Icons.add_shopping_cart_outlined,
                                  "Pembelian", 50),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildCard(
                                  Icons.add_chart_outlined, "Investasi", 50),
                              buildCard(Icons.access_alarm_outlined,
                                  "Life Goals", 50),
                              buildCard(Icons.transfer_within_a_station_rounded,
                                  "Digital Loan", 50),
                              buildCard(Icons.featured_play_list_outlined,
                                  "My Credit Card", 50),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildCard(Icons.account_tree_outlined,
                                  "Rekeningku", 50),
                              buildCard(Icons.mobile_friendly_outlined,
                                  "Mobile Tunai", 50),
                              buildCard(
                                  Icons.card_giftcard_outlined, "Dikado", 50),
                              buildCard(
                                  Icons.menu_open_outlined, "Menu Lengkap", 50),
                            ],
                          ),
                          Column(children: lvTest)
                        ],
                      ),
                    ]),
                  )
                ],
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    color: Colors.lightBlueAccent[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildMenuBarCard(
                            Icons.dashboard_customize_outlined, "Beranda", 30),
                        buildMenuBarCard(
                            Icons.change_circle_outlined, "Riwayat", 30),
                        buildMenuBarCard(
                            Icons.qr_code_scanner_outlined, "Scan", 40),
                        buildMenuBarCard(
                            Icons.star_border_outlined, "Favorit", 30),
                        buildMenuBarCard(
                            Icons.settings_outlined, "Settings", 30)
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String texter, double sizeButton) {
    return Card(
        elevation: 2,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(iconData),
                  color: Colors.orange[400],
                  iconSize: sizeButton,
                )),
            Text(texter)
          ],
        ));
  }

  Card buildMenuBarCard(IconData iconData, String texter, double sizeButton) {
    return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.lightBlueAccent[100],
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(iconData),
                  color: Colors.orange[400],
                  iconSize: sizeButton,
                )),
            Text(texter)
          ],
        ));
  }

  IconButton btnCardNoText(IconData iconData, double sizeButton) {
    return IconButton(
      onPressed: () {},
      icon: Icon(iconData),
      color: Colors.white,
      iconSize: sizeButton,
    );
  }
}

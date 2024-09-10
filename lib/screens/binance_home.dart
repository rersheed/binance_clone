import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BinanceHome extends StatelessWidget {
  BinanceHome({super.key});

  TextStyle myStyle = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          title: const Text(
            "Binance Clone",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage("assets/images/bg/chart.png"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Explore the World of Digital Assets!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Sign Up/Log In"),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.amber),
                              textStyle: MaterialStateProperty.all(
                                  const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      TrendingAssets(
                        assetName: "BNB",
                        assetValue: "521.1",
                        assetIncrement: "+2.48%",
                      ),
                      TrendingAssets(
                        assetName: "SOL",
                        assetValue: "521.1",
                        assetIncrement: "+2.48%",
                      ),
                      TrendingAssets(
                        assetName: "100SATS",
                        assetValue: "521.1",
                        assetIncrement: "+2.48%",
                      ),
                      TrendingAssets(
                        assetName: "ETH",
                        assetValue: "521.1",
                        assetIncrement: "+2.48%",
                      ),
                      TrendingAssets(
                        assetName: "DOGGS",
                        assetValue: "521.1",
                        assetIncrement: "+2.48%",
                      ),
                      TrendingAssets(
                        assetName: "TON",
                        assetValue: "521.1",
                        assetIncrement: "+2.48%",
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "View 350+ coins",
                          style: TextStyle(color: Colors.amber),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: DefaultTabController(
                    length: 4,
                    child: Scaffold(
                      backgroundColor: Colors.blueGrey.shade900,
                      appBar: AppBar(
                        backgroundColor: Colors.blueGrey.shade900,
                        flexibleSpace: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TabBar(
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.white,
                              tabs: [
                                Tab(
                                  text: "Discover",
                                ),
                                Tab(
                                  text: "Following",
                                ),
                                Tab(
                                  text: "Announcements",
                                ),
                                Tab(
                                  text: "News",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      body: const TabBarView(
                        children: <Widget>[
                          Column(
                            children: <Widget>[Text("Discover")],
                          ),
                          Column(
                            children: <Widget>[Text("Following")],
                          ),
                          Column(
                            children: <Widget>[Text("Announcements")],
                          ),
                          Column(
                            children: <Widget>[Text("News")],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Colors.blueGrey.shade900,
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: "Markets",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.currency_exchange),
                label: "Trades",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: "Futures",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet),
                label: "Wallets",
              ),
            ],
            currentIndex: 0,
            selectedItemColor: Colors.blueGrey.shade700,
            unselectedItemColor: Colors.blueGrey.shade300,
            showUnselectedLabels: true,
            onTap: (index) {},
          ),
        ));
  }
}

class TrendingAssets extends StatelessWidget {
  TrendingAssets({
    super.key,
    required this.assetName,
    required this.assetValue,
    required this.assetIncrement,
  });

  final String assetName;
  final String assetValue;
  final String assetIncrement;

  TextStyle myStyle = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          assetName,
          style: myStyle,
        ),
        Row(
          children: [
            Column(
              children: [
                Text(
                  assetValue,
                  style: myStyle,
                ),
                Text(
                  "\$$assetValue",
                  style: myStyle.copyWith(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                assetIncrement,
                style: myStyle,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

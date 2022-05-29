import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  String title1 = 'Name/Vol';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            SizedBox(
              height: 64,
              child: TabBar(
                onTap: (int index) {
                  setState(() {
                    if (index == 1) {
                      title1 = 'pelee';
                    }
                  });
                  print(index);
                },
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 1.6,
                  top: 20,
                  bottom: 20,
                ),
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(3),
                ),
                unselectedLabelColor: Colors.grey,
                labelPadding: EdgeInsets.symmetric(horizontal: 0),
                labelColor: Colors.black,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Tab(text: 'Spot'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Tab(text: 'Futures'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title1),
                  Text('Last Price'),
                  Text('24h Chg%'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Spot(),
                  Futures(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Spot extends StatelessWidget {
  const Spot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 500, child: Column());
  }
}

class Futures extends StatelessWidget {
  const Futures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 500, child: Container());
  }
}

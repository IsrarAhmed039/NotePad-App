import 'package:app_development/functions/sales_buy.dart';
import 'package:flutter/material.dart';

class ScreenFirst extends StatefulWidget {
  const ScreenFirst({Key? key}) : super(key: key);

  @override
  _ScreenFirstState createState() => _ScreenFirstState();
}

class _ScreenFirstState extends State<ScreenFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              backgroundColor: Color(0xff2A4BA0),
              flexibleSpace: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 26, 16, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hey ,  ISRAR AHMED',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.badge,
                                color: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              radius: 10,
                              backgroundColor:
                                  const Color.fromARGB(255, 194, 176, 9),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search product or Store',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Color(0xff153075),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 300, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'DELIVERY TO',
                                  style: TextStyle(color: Colors.white60),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Green way to 3000, Sylhet',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'WITH IN',
                                  style: TextStyle(
                                    color: Colors.white60,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '1 Hour',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SalesBuy(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  // Your main content here
                  ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              onPressed: () {
                // Handle home button press
              },
            ),
            IconButton(
              icon: Icon(
                Icons.category_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                // Handle notifications button press
              },
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {
                // Handle profile button press
              },
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {
                // Handle profile button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SalesBuy extends StatefulWidget {
  const SalesBuy({super.key});

  @override
  State<SalesBuy> createState() => _SalesBuyState();
}

class _SalesBuyState extends State<SalesBuy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Card(
              color: Color(
                0xffF9B023,
              ),
              child: Row(
                children: [
                  Icon(Icons.image_rounded),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

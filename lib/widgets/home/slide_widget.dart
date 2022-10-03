import 'package:finekubetask/widgets/home/price_card_widget.dart';
import 'package:flutter/material.dart';

class Cardsliding extends StatelessWidget {
  const Cardsliding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 50,
      ),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          final data = Pricewidget().pricecards[index];
          return data;
        },
      ),
    );
  }
}

class Pricewidget {
  List<PriceCard> pricecards = [
    PriceCard(
      amountText: "1 250",
      iconUrl: "assets/image/bottom_left_arrow.png",
      title: "Owe me",
      cardColor: Colors.green.withOpacity(0.7),
    ),
    PriceCard(
      amountText: "1130",
      iconUrl: "assets/image/top_right_arrow.png",
      title: "Owe me",
      cardColor: Colors.red.withOpacity(0.7),
    ),
    PriceCard(
      amountText: "1 250",
      iconUrl: "assets/image/bottom_left_arrow.png",
      title: "Owe me",
      cardColor: Colors.green.withOpacity(0.7),
    ),
    PriceCard(
      amountText: "1130",
      iconUrl: "assets/image/top_right_arrow.png",
      title: "Owe me",
      cardColor: Colors.red.withOpacity(0.7),
    ),
  ];
}

import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  const PriceCard(
      {Key? key,
      required this.amountText,
      required this.iconUrl,
      required this.title,
      required this.cardColor})
      : super(key: key);
  final String amountText;
  final String iconUrl;
  final String title;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, right: 20, left: 10),
      child: Container(
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(12)),
        child: SizedBox(
          width: 160,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Color.fromARGB(156, 255, 255, 255),
                          fontSize: 14),
                    ),
                    Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  cardColor.withOpacity(0.5),
                                  BlendMode.dstATop),
                              image: AssetImage(iconUrl))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, bottom: 12),
                child: Row(
                  children: [
                    Text(
                      "\$ $amountText",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: const [
                    Text(
                      "2 debts",
                      style: TextStyle(
                          color: Color.fromARGB(156, 255, 255, 255),
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

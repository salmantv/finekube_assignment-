import 'package:finekubetask/model/userModel.dart';
import 'package:finekubetask/service/apifiching.dart';
import 'package:finekubetask/widgets/home/scroll_widget.dart';
import 'package:finekubetask/widgets/list/userdata_card.dart';
import 'package:flutter/material.dart';

class Bodywidget extends StatelessWidget {
  const Bodywidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                OverlayWidget(iconUrl: "assets/image/plus.png", hText: "NEW"),
                OverlayWidget(
                    iconUrl: "assets/image/topright-arrow.png",
                    hText: "PAY OFF"),
                OverlayWidget(
                  iconUrl: "assets/image/bottomleft_arrow.png",
                  hText: "LEND",
                ),
                OverlayWidget(iconUrl: "assets/image/grid.png", hText: "MORE")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 150,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "My debts",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            FutureBuilder<List<Userdata>>(
                future: Apihelperclass().getingrecipedata(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 180),
                      child: SizedBox(
                        height: 600,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final data = snapshot.data![index];
                            return Usercard(
                              data: data,
                            );
                          },
                        ),
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}

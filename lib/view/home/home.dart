import 'package:finekubetask/widgets/home/body_widget.dart';
import 'package:finekubetask/widgets/home/slide_widget.dart';
import 'package:flutter/material.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 217, 248),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              toolbarHeight: 80,
              backgroundColor: const Color.fromARGB(255, 177, 217, 248),
              pinned: false,
              elevation: 0,
              floating: true,
              expandedHeight: 240.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage("assets/image/prifile.jpg")),
                          Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Icon(
                            Icons.notifications,
                            size: 25,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    const Cardsliding(),
                  ],
                ),
              ),
            ),
            const SliverFillRemaining(
              child: Bodywidget(),
            ),
          ],
        ),
      ),
    );
  }
}

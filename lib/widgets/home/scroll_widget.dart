import 'package:flutter/material.dart';

class OverlayWidget extends StatelessWidget {
  const OverlayWidget({Key? key, required this.iconUrl, required this.hText})
      : super(key: key);
  final String iconUrl;
  final String hText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color.fromARGB(118, 255, 255, 255),
          radius: 45,
          child: CircleAvatar(
            radius: 34,
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            child: Image(width: 20, height: 20, image: AssetImage(iconUrl)),
          ),
        ),
        Text(
          hText,
          style: const TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

import 'package:finekubetask/model/userModel.dart';
import 'package:flutter/material.dart';

class Usercard extends StatelessWidget {
  Usercard({Key? key, required this.data}) : super(key: key);

  final Userdata data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Card(
          color: Colors.white,
          elevation: 6,
          child: Column(
            children: [
              ListTile(
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      data.amount!,
                      style: const TextStyle(fontSize: 15, color: Colors.red),
                    ),
                    Text(
                      data.outOfAmount!,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                title: Text(data.name!),
                subtitle: Text(data.until!),
                leading: CircleAvatar(
                  radius: 30,
                  child: Image.network(data.img!),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

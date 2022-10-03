// To parse this JSON data, do
//
//     final userdata = userdataFromJson(jsonString);

import 'dart:convert';

Userdata userdataFromJson(String str) => Userdata.fromJson(json.decode(str));

String userdataToJson(Userdata data) => json.encode(data.toJson());

class Userdata {
  Userdata({
    this.id,
    this.name,
    this.img,
    this.until,
    this.amount,
    this.outOfAmount,
  });

  String? id;
  String? name;
  String? img;
  String? until;
  String? amount;
  String? outOfAmount;

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
        id: json["id"] == null ? null : json["id"],
        name: json["Name"] == null ? null : json["Name"],
        img: json["Img"] == null ? null : json["Img"],
        until: json["Until"] == null ? null : json["Until"],
        amount: json["Amount"] == null ? null : json["Amount"],
        outOfAmount: json["OutOfAmount"] == null ? null : json["OutOfAmount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "Name": name == null ? null : name,
        "Img": img == null ? null : img,
        "Until": until == null ? null : until,
        "Amount": amount == null ? null : amount,
        "OutOfAmount": outOfAmount == null ? null : outOfAmount,
      };
}



import 'dart:convert';

List<BloodModel> bloodModelFromJson(String str) => List<BloodModel>.from(json.decode(str).map((x) => BloodModel.fromJson(x)));

String bloodModelToJson(List<BloodModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BloodModel {
  int id;
  String name;
  String phoneNumber;
  String bloodGroup;
  DateTime dateOfBirth;
  DateTime lastDonationDate;
  bool isAvailable;
  String religion;
  String district;
  String city;
  String profession;
  DateTime createdAt;
  DateTime updatedAt;

  BloodModel({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.bloodGroup,
    required this.dateOfBirth,
    required this.lastDonationDate,
    required this.isAvailable,
    required this.religion,
    required this.district,
    required this.city,
    required  this.profession,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BloodModel.fromJson(Map<String, dynamic> json) => BloodModel(
    id: json["id"],
    name: json["name"],
    phoneNumber: json["phone_number"],
    bloodGroup: json["blood_group"],
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    lastDonationDate: DateTime.parse(json["last_donation_date"]),
    isAvailable: json["is_available"],
    religion: json["religion"],
    district: json["district"],
    city: json["city"],
    profession: json["profession"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "phone_number": phoneNumber,
    "blood_group": bloodGroup,
    "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "last_donation_date": "${lastDonationDate.year.toString().padLeft(4, '0')}-${lastDonationDate.month.toString().padLeft(2, '0')}-${lastDonationDate.day.toString().padLeft(2, '0')}",
    "is_available": isAvailable,
    "religion": religion,
    "district": district,
    "city": city,
    "profession": profession,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

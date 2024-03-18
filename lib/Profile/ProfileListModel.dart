import 'dart:convert';

import 'package:travelapp/Constant/Icon_Path.dart';
import 'package:travelapp/Constant/Image_Path.dart';

import '../Constant/AppString.dart';

ProfileListModel profileListModelFromJson(String str) => ProfileListModel.fromJson(json.decode(str));

String profileListModelToJson(ProfileListModel data) => json.encode(data.toJson());

class ProfileListModel {
  String image;
  String title;
  String image1;

  ProfileListModel({
    required this.image,
    required this.title,
    required this.image1,
  });

  factory ProfileListModel.fromJson(Map<String, dynamic> json) => ProfileListModel(
    image: json["image"],
    title: json["title"],
    image1: json["image1"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "title": title,
    "image1": image1,
  };
}

List<ProfileListModel> ProfileList = [
  ProfileListModel(image: IconPath.terms, title: AppString.termsofservice, image1: IconPath.arrow),
  ProfileListModel(image: IconPath.language, title: AppString.language, image1: IconPath.arrow),
  ProfileListModel(image: IconPath.help, title: AppString.helpcenter, image1: IconPath.arrow),
];
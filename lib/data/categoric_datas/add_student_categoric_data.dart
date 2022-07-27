import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/data/models/add_categoric_model.dart';
import 'package:hesap_owner_interface/ui/themes/category_colors.dart';
import 'package:hesap_owner_interface/ui/themes/category_icons.dart';

List addStudentCategoricData = [
  AddCategoricModel(
    title: "Okul",
    specialKey: "school",
    icon: CategoryIcons.schoolIcon,
    color: CategoryColors.schoolColor,
  ),
  AddCategoricModel(
    title: "Bölüm",
    specialKey: "major",
    icon: CategoryIcons.majorIcon,
    color: CategoryColors.majorColor,
  ),
];

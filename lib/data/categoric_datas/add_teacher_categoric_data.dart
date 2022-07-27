import 'package:hesap_owner_interface/data/models/add_categoric_model.dart';
import 'package:hesap_owner_interface/ui/themes/category_colors.dart';
import 'package:hesap_owner_interface/ui/themes/category_icons.dart';

List addTeacherCategoricData = [
  AddCategoricModel(
    title: "İsim",
    specialKey: "name",
    icon: CategoryIcons.nameIcon,
    color: CategoryColors.nameColor,
  ),
  AddCategoricModel(
    title: "Soyisim",
    specialKey: "surname",
    icon: CategoryIcons.surnameIcon,
    color: CategoryColors.surnameColor,
  ),
];

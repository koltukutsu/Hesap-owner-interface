import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/data/categoric_datas/add_teacher_categoric_data.dart';
import 'package:hesap_owner_interface/responsive.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';
import 'package:hesap_owner_interface/ui/widgets/molecules/information_cards_section.dart';

class AddTeacherForm extends StatelessWidget {
  const AddTeacherForm({Key? key, required this.formCurrentDatasTeacher})
      : super();
  final Map<String, String> formCurrentDatasTeacher;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: InformationCardsSection(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.2 : 1,
            givenData: addTeacherCategoricData,
            formCurrentDatas: formCurrentDatasTeacher,
          ),
          tablet: InformationCardsSection(
              givenData: addTeacherCategoricData,
              crossAxisCount: 4,
              formCurrentDatas: formCurrentDatasTeacher),
          desktop: InformationCardsSection(
            crossAxisCount: _size.width < 1280 ? 5 : 6,
            childAspectRatio: _size.width < 1280 ? 1.1 : 1.3,
            givenData: addTeacherCategoricData,
            formCurrentDatas: formCurrentDatasTeacher,
          ),
        ),
      ],
    );
  }
}

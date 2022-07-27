import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/ui/widgets/blank.dart';
import 'package:hesap_owner_interface/ui/widgets/molecules/delete_individual_button.dart';

DataRow TeacherDataRow(var fileInfo) {
  ContainerTransitionType _containerTransitionType =
      ContainerTransitionType.fade;
  return DataRow(
    // onSelectChanged: ,

    cells: [
      DataCell(
        Row(
          children: [
            Text(fileInfo.name),
          ],
        ),
      ),
      DataCell(Text(fileInfo.surname)),
      DataCell(Text(fileInfo.dormitory)),
      DataCell(Text(fileInfo.region)),
      DataCell(Text(fileInfo.province)),
      DataCell(Text(fileInfo.district)),
      DataCell(Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 1.5,
          ),
          SizedBox(
            width: 70,
            height: 25,
            child: OpenContainer(
              transitionType: _containerTransitionType,
              transitionDuration: Duration(milliseconds: 400),
              openBuilder: (context, _) =>
                  BlankPage(),
              closedBuilder: (context, _) => Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Detaylandır",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  )),
            ),
          ),
        ],
      ))
    ],
  );
}

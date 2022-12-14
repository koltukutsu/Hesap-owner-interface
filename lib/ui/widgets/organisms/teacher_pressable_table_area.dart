import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/ui/themes/colors.dart';

class PressableTableArea extends StatelessWidget {
  const PressableTableArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: AppColors.white,
        ),
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.8,
      ),
    );
  }
}

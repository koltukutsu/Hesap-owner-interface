import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';
import 'package:hesap_owner_interface/ui/themes/colors.dart';

class AdminPressableTableArea extends StatelessWidget {
  const AdminPressableTableArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hocalar",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              // Text(
              //   "Sayi: 24",
              //   style: Theme.of(context).textTheme.subtitle1,
              // ),
            ],
          ),
          SizedBox(
            width: double.infinity,

            // child: BlocBuilder(
            //     builder: (context, state) {
            //   if (state is GotTeacherDatas) {
            //     return DataTable2(
            //         dataTextStyle:
            //             TextStyle(fontSize: 14.5, color: Colors.white),
            //         columnSpacing: 0,
            //         minWidth: 600,
            //         columns: [
            //           DataColumn(
            //             label: Text("İsim"),
            //           ),
            //           DataColumn(
            //             label: Text("Soyisim"),
            //           ),
            //           DataColumn(
            //             label: Text("Medrese"),
            //           ),
            //           // DataColumn(
            //           //   label: Text("Memleket"),
            //           // ),
            //           // DataColumn(
            //           //   label: Text("Ülke"),
            //           // ),
            //           DataColumn(
            //             label: Text("Bölge"),
            //           ),
            //           DataColumn(
            //             label: Text("İl"),
            //           ),
            //           DataColumn(
            //             label: Text("İlçe"),
            //           ),
            //           DataColumn(
            //             label: Text("     "),
            //           ),
            //         ],
            //         rows: [
            //           ...List.generate(
            //             state.teacherDatas.length,
            //             (index) => TeacherDataRow(state.teacherDatas[index]),
            //           ),
            //         ]);
            //   } else if (state is LoadingTeacherDatas) {
            //     return Container(
            //       height: 100,
            //       width: 100,
            //       child: LinearProgressIndicator(color: bgColor),
            //     );
            //   } else {
            //     return Container(
            //       color: green,
            //     );
            //   }
            // }),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/data/models/MyFiles.dart';
import 'package:hesap_owner_interface/responsive.dart';
import 'package:hesap_owner_interface/ui/screens/forms/input_form.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';

import '../molecules/top_pressable_card.dart';

class TopManagemenetArea extends StatelessWidget {
  const TopManagemenetArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Değerler",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            // ElevatedButton.icon(
            //   style: TextButton.styleFrom(
            //     padding: EdgeInsets.symmetric(
            //       horizontal: defaultPadding * 1.5,
            //       vertical:
            //           defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
            //     ),
            //   ),
            //   onPressed: () {
            //     Navigator.of(context).push(new MaterialPageRoute<Null>(
            //         builder: (BuildContext context) {
            //           return new FormMaterial(
            //             formType: "teacher",
            //           );
            //         },
            //         fullscreenDialog: true));
            //   },
            //   icon: Icon(Icons.add),
            //   label: Text("Yeni Ekle"),
            // ),
          ],
        ),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: const FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          TopPressableCard(info: demoMyFiles[index]),
    );
  }
}

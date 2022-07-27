// import 'package:admin/color_constants.dart';
// import 'package:admin/data/models/daily_info_model.dart';
// import 'package:admin/responsive.dart';
// import 'package:admin/ui/widgets/atoms/app_button_widget.dart';
// import 'package:flutter/material.dart';
//
// class SelectionSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final Size _size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [],
//         ),
//         SizedBox(height: defaultPadding),
//         Responsive(
//           mobile: InformationCard(
//             crossAxisCount: _size.width < 650 ? 2 : 4,
//             childAspectRatio: _size.width < 650 ? 1.2 : 1,
//           ),
//           tablet: InformationCard(),
//           desktop: InformationCard(
//             childAspectRatio: _size.width < 1400 ? 1.1 : 1.3,
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class InformationCard extends StatelessWidget {
//   const InformationCard({
//     Key? key,
//     this.crossAxisCount = 5,
//     this.childAspectRatio = 1.3,
//   }) : super(key: key);
//
//   final int crossAxisCount;
//   final double childAspectRatio;
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: dailyDatas.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         crossAxisSpacing: defaultPadding,
//         mainAxisSpacing: defaultPadding,
//         childAspectRatio: childAspectRatio,
//       ),
//       itemBuilder: (context, index) =>
//           MiniInformationWidget(dailyData: dailyDatas[index]),
//     );
//   }
// }
//
// class MiniInformationWidget extends StatefulWidget {
//   const MiniInformationWidget({
//     Key? key,
//     required this.dailyData,
//   }) : super(key: key);
//   final DailyInfoModel dailyData;
//
//   @override
//   _MiniInformationWidgetState createState() => _MiniInformationWidgetState();
// }
//
// class _MiniInformationWidgetState extends State<MiniInformationWidget> {
//   bool _visible = false;
//
//   TextEditingController _controller = TextEditingController();
//
//   void _toggle() {
//     setState(() {
//       _visible = !_visible;
//     });
//   }
//
//   int charLength = 0;
//
//   bool status = false;
//   bool _closeIcon = true;
//
//   _onChanged(String value) {
//     setState(() {
//       charLength = value.length;
//     });
//
//     if (charLength >= 1) {
//       setState(() {
//         _closeIcon = _closeIcon;
//         status = true;
//       });
//     } else {
//       setState(() {
//         _closeIcon = !_closeIcon;
//         status = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // width: MediaQuery.of(context).size.width * 0.3,
//       // height: MediaQuery.of(context).size.height * 0.2,
//       padding: EdgeInsets.all(defaultPadding),
//       decoration: BoxDecoration(
//         color: secondaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 // padding: EdgeInsets.all(defaultPadding * 0.75),
//                 height: 40,
//                 width: 40,
//                 decoration: BoxDecoration(
//                   color: widget.dailyData.color!.withOpacity(0.1),
//                   borderRadius: const BorderRadius.all(Radius.circular(10)),
//                 ),
//                 child: Icon(
//                   widget.dailyData.icon,
//                   color: widget.dailyData.color,
//                   size: 18,
//                 ),
//               ),
//             ],
//           ),
//           // SizedBox(height: 8),
//           GestureDetector(
//               child: Container(
//                 alignment: Alignment.center,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       "New ${widget.dailyData.title!}",
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Visibility(
//                       visible: !_visible,
//                       child: Icon(Icons.create, size: 18),
//                     )
//                   ],
//                 ),
//               ),
//               onTap: () {
//                 _toggle();
//               }),
//           SizedBox(
//             height: 2,
//           ),
//           Visibility(
//             visible: _visible,
//             child: new Container(
//               height: 60,
//               // padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
//               child: new Material(
//                 elevation: 10.0,
//                 borderRadius: BorderRadius.circular(8.0),
//                 child: new ListTile(
//                   title: new TextField(
//                     controller: _controller,
//                     decoration: new InputDecoration(
//                       hintText: 'Enter Name',
//                       border: InputBorder.none,
//                     ),
//                     onChanged: _onChanged,
//                   ),
//                   trailing: new IconButton(
//                     icon: new Icon(Icons.cancel),
//                     onPressed: () {
//                       _controller.clear();
//                       _toggle();
//                       status = false;
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Visibility(
//             maintainSize: true,
//             maintainAnimation: true,
//             maintainState: true,
//             visible: status,
//             child: Container(
//               // padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0),
//               // margin: EdgeInsets.only(top: 15),
//               height: 40,
//               child: Center(
//                 child: AppButton(
//                   type: ButtonType.PRIMARY,
//                   text: "Kaydet",
//                   onPressed: () {
//                     print('Button clicked..');
//                     _showDialog(context);
//                     _toggle();
//                     status = false;
//                   },
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 80,
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   _showDialog(BuildContext context) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Container(
//             child: Row(
//               children: [
//                 Icon(
//                   Icons.verified,
//                   color: bgColor,
//                 ),
//                 SizedBox(
//                   width: 25,
//                 ),
//                 Text('Değer kaydedildi..'),
//               ],
//             ))));
//   }
//
// }

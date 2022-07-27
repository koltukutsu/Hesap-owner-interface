import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  // final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final Function(String)? onChangedFunction;
  final String currentText;
  final bool isEnabled;
  final bool isOnlyNumber;

  const CustomTextField(
      {Key? key,
      required this.labelText,
      required this.currentText,
      this.isOnlyNumber = true,
      this.isEnabled = false,
      // required this.controller,
      this.hintText,
      this.onChangedFunction})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      controller.text = widget.currentText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
      child: new Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(8.0),
        child: ListTile(
          title: TextField(
            // controller: widget.controller,
            keyboardType: widget.isOnlyNumber == true
                ? TextInputType.number
                : TextInputType.text,
            controller: controller,
            enabled: widget.isEnabled,
            decoration: new InputDecoration(
              hintText: widget.hintText,
              labelText: widget.labelText,
              border: InputBorder.none,
            ),
            onChanged: widget.onChangedFunction,
          ),
          // trailing: widget.controller.text.length >= 1
          trailing: controller.text.length >= 1 && widget.isEnabled
              ? IconButton(
                  icon: new Icon(Icons.delete_sweep),
                  onPressed: () {
                    controller.clear();
                    // _toggle();
                    // status = false;
                  },
                )
              : null,
        ),
      ),
    );
  }
}

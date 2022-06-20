import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class DropButton extends StatefulWidget {
  const DropButton({Key? key}) : super(key: key);

  @override
  _DropButtonState createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          value: "USD Dollar",
          child: Text(
            "USD Dollar",
            style: TextStyle(color: kTextColor1),
          )),
      const DropdownMenuItem(
          value: "1",
          child: Text(
            "1",
            style: TextStyle(color: kTextColor1),
          )),
      const DropdownMenuItem(
          value: "2",
          child: Text(
            "2",
            style: TextStyle(color: kTextColor1),
          )),
      const DropdownMenuItem(
          value: "3",
          child: Text(
            "3",
            style: TextStyle(color: kTextColor1),
          )),
    ];
    return menuItems;
  }

  String selectedValue = "USD Dollar";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      margin: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBackgroundColor,
      ),
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kTextColor1, width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: kTextColor1, width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
            filled: true,
            fillColor: kBackgroundColor,
          ),
          dropdownColor: kBackgroundColor,
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: dropdownItems),
    );
  }
}

class DropButtons extends StatefulWidget {
  const DropButtons({Key? key}) : super(key: key);

  @override
  _DropButtonsState createState() => _DropButtonsState();
}

class _DropButtonsState extends State<DropButtons> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          value: "All",
          child: Text(
            "All",
            style: TextStyle(color: kTextColor1),
          )),
      const DropdownMenuItem(
          value: "1",
          child: Text(
            "1",
            style: TextStyle(color: kTextColor1),
          )),
      const DropdownMenuItem(
          value: "2",
          child: Text(
            "2",
            style: TextStyle(color: kTextColor1),
          )),
      const DropdownMenuItem(
          value: "3",
          child: Text(
            "3",
            style: TextStyle(color: kTextColor1),
          )),
    ];
    return menuItems;
  }

  String selectedValue = "All";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 280.w,
      margin: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBackgroundColor,
      ),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kTextColor1, width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: kTextColor1, width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
          filled: true,
          fillColor: kBackgroundColor,
        ),
        dropdownColor: kBackgroundColor,
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: dropdownItems,
      ),
    );
  }
}

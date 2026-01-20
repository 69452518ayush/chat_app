import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkly/core/constants/colors.dart';

import '../../core/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    this.hintText,
    this.focusNode,
    required this.isSearch,
    required this.isChatText,
    this.controller,
    this.onTap,
    required this.isPassword,
  });
  final void Function(String)? onChanged;
  final String? hintText;
  final FocusNode? focusNode;
  final bool isSearch;
  final bool isChatText;
  final TextEditingController? controller;
  final void Function()? onTap;
  final bool isPassword;

  //String get searchIcon => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isChatText ? 35.h : null,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        focusNode: focusNode,
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding: isChatText ? EdgeInsets.symmetric(horizontal: 12.w): null,
          filled: true,
          fillColor: isChatText ? white : grey.withOpacity(0.12),
          hintStyle: body.copyWith(color: grey),
          suffixIcon: isSearch ? Container(
            height: 55,
            width: 55,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(12.r)
            ),
            child: Icon(Icons.search),
          ): isChatText ? InkWell(onTap: onTap,child: const Icon(Icons.send),) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(isChatText? 25.r : 10.r),
            borderSide: BorderSide.none
          )

      )
      ),
    );
  }
}

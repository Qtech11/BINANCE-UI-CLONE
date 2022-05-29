import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const kMarketsInputDecoration = InputDecoration(
  fillColor: Color(0xffe8e3e3),
  filled: true,
  prefixIcon: Icon(CupertinoIcons.search),
  prefixIconColor: Colors.black26,
  hintText: 'Search Coin Pairs',
  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
  contentPadding: EdgeInsets.zero,
  floatingLabelBehavior: FloatingLabelBehavior.never,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

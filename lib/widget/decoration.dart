import 'package:flutter/material.dart';

final borderDecoration = InputDecoration(
  errorStyle: const TextStyle(color: Colors.red),
  hintStyle: const TextStyle(color: Colors.green),
  labelStyle: const TextStyle(color: Colors.black),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(color: Colors.red),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(color: Colors.green, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(color: Colors.greenAccent, width: 4),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(color: Colors.red, width: 3),
  ),
);

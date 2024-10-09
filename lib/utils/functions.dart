import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

double? addAmount(List<TransactionStruct>? transactions) {
  // add all the amounts
  double totalAmount = 0.0;

  if (transactions == null || transactions.isEmpty) {
    return totalAmount;
  }

  for (var transaction in transactions) {
    totalAmount += transaction.amount;
  }

  return totalAmount;
}

List<String>? getCategoriesName(
    List<TransactionStruct>? transactions,
    List<CategoriesStruct>? category,
    ) {
  // get the names of the categories on the bases of transaction category
  if (transactions == null ||
      category == null ||
      transactions.isEmpty ||
      category.isEmpty) {
    return null;
  }

  List<String> categoryNames = [];
  for (var transaction in transactions) {
    for (var cat in category) {
      if (transaction.category == cat.id) {
        categoryNames.add(cat.name);
        break;
      }
    }
  }

  return categoryNames;
}

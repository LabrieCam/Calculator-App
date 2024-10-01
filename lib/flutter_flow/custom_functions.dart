import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? calculateGrade(int? score) {
  // compute letter grades (A, B, C, D, F) based on an integer score (0-100), and use this in your application.    More information:  The custom function is to determine the letter grade based on the score using the following scale:  A: 90-100  B: 80-89  C: 70-79  D: 60-69  F: Below 60. Add input validation to ensure the user has entered a valid score (0-100). If the user did not enter a valid score, display an error message (e.g. “Not a number” OR “out of range”).
  if (score == null) {
    return 'Not a number';
  } else if (score < 0 || score > 100) {
    return 'Out of range';
  } else if (score >= 90) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

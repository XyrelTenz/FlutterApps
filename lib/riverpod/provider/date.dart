import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final dataFormat = Provider<DateFormat>((ref) {
  return DateFormat.MMMEd();
});

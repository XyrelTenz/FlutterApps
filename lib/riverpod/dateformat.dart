import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "./provider/date.dart";

class DateFormat extends ConsumerStatefulWidget {
  const DateFormat({super.key});

  @override
  ConsumerState<DateFormat> createState() => _DateFormatState();
}

class _DateFormatState extends ConsumerState<DateFormat> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final date = ref.watch(dataFormat);
    final formatedDate = date.format(DateTime.now());
    return Scaffold(
      body: Text(
        formatedDate,
        style: TextStyle(
          color: Color(0xFF313131),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

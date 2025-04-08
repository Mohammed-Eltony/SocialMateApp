import 'package:flutter/material.dart';

class CustomConditionWidget extends StatefulWidget {
  const CustomConditionWidget({super.key, required this.onConditionChanged});
  final void Function(String) onConditionChanged;
  @override
  State<CustomConditionWidget> createState() => _CustomConditionWidgetState();
}

class _CustomConditionWidgetState extends State<CustomConditionWidget> {
  String condition = "excellent";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: "excellent",
          groupValue: condition,
          onChanged: (value) {
            setState(() {
              condition = value!;
            });
            widget.onConditionChanged(condition);
          },
        ),
        Text("Excellent"),
        Radio<String>(
          value: "good",
          groupValue: condition,
          onChanged: (value) {
            setState(() {
              condition = value!;
            });
            widget.onConditionChanged(condition);
          },
        ),
        Text("Good"),
        Radio<String>(
          value: "fair",
          groupValue: condition,
          onChanged: (value) {
            setState(() {
              condition = value!;
            });
            widget.onConditionChanged(condition);
          },
        ),
        Text("Fair"),
        Radio<String>(
          value: "poor",
          groupValue: condition,
          onChanged: (value) {
            setState(() {
              condition = value!;
            });
            widget.onConditionChanged(condition);
          },
        ),
        Text("Poor"),
      ],
    );
  }
}

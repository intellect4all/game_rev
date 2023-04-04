import 'package:flutter/material.dart';

class OTPBoxInput extends StatelessWidget {
  const OTPBoxInput({
    Key? key,
    required this.onChanged,
    required this.numberOfInput,
    this.borderColor,
    this.borderRadius,
    this.inputHeight,
    this.inputWidth,
  }) : super(key: key);

  final int numberOfInput;
  final void Function(String) onChanged;
  final double? inputHeight;
  final double? inputWidth;
  final double? borderRadius;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final List<String> pins = List.generate(numberOfInput, (index) => '');

    String otp = '';

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Spacer(),
      ...List.generate(
        numberOfInput,
        (index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextFormField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  if (value.isNotEmpty) pins[index] = value;
                  if (value.length == 1 && index == (numberOfInput - 1)) {
                    FocusScope.of(context).unfocus();
                    otp = '';
                    for (String pin in pins) {
                      otp += pin;
                    }
                    value = otp;
                    onChanged(value);
                  }
                  if (value.length == 1 && index != numberOfInput - 1) {
                    FocusScope.of(context).nextFocus();
                  }
                  if (value.isEmpty && index != 0) {
                    FocusScope.of(context).previousFocus();
                  }
                },
                keyboardType: TextInputType.number,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 4),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 4),
                    borderSide: BorderSide(
                      color: borderColor ?? Colors.grey[300]!,
                    ),
                  ),
                ),
              ),
            ),
            //  ),
          );
        },
      ),
      const Spacer()
    ]);
  }
}

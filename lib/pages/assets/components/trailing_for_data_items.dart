import 'package:flutter/material.dart';


class TrailingForDataItems extends StatelessWidget {
  const TrailingForDataItems({
    super.key,
    required this.price,
    required this.subTitle,
  });

  final String price;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '$price USDT',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          subTitle,
          style: const TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

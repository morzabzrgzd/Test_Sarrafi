import 'package:flutter/material.dart';


class AssetsListDataItems extends StatelessWidget {
  const AssetsListDataItems({
    super.key,
    required this.title,
    required this.onTap,
    required this.trailing,
  });

  final String title;
  final VoidCallback onTap;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.black.withOpacity(0.05),
      splashColor: Colors.black.withOpacity(0.05),
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 70,
        padding: const EdgeInsets.only(
          left: 15,
          right: 10,
          top: 10,
          bottom: 10,
        ),
        // height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            trailing,
            const SizedBox(width: 8),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
              color: Colors.grey.shade300,
            )
          ],
        ),
        // color: Colors.blue,
      ),
    );
  }
}
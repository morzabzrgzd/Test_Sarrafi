import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';


class PnlanalysisWidget extends StatelessWidget {
  const PnlanalysisWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '51.07اٍ.د =',
          style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 5),
        const Icon(
          CupertinoIcons.info_circle_fill,
          size: 15,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: const Color(0xffF6F6F6),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Row(
            children: [
              Icon(
                FeatherIcons.pieChart,
                size: 17,
              ),
              SizedBox(width: 5),
              Text(
                'PnL Analysis',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}


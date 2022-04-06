import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlatformItem extends StatelessWidget {
  final String svgIcon;
  final String title;

  const PlatformItem({
    required this.svgIcon,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15
      ),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
              svgIcon
          ),
          const SizedBox(height: 10,),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          )
        ],
      ),
    );
  }
}

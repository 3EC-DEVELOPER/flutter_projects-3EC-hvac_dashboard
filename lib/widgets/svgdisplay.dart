import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const/constant.dart';

class SvgDisplay extends StatelessWidget {
  const SvgDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'System Status',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: const [
            _StatusTile(icon: 'assets/icons/AC.svg', label: 'A/C'),
            _StatusTile(icon: 'assets/icons/Vent.svg', label: 'Ventilation'),
            _StatusTile(icon: 'assets/icons/Heat.svg', label: 'Heating'),
            _StatusTile(icon: 'assets/icons/Cool.svg', label: 'Cooling'),
            _StatusTile(icon: 'assets/icons/Energy.svg', label: 'Energy'),
            _StatusTile(icon: 'assets/icons/Network.svg', label: 'Network'),
          ],
        ),
      ],
    );
  }
}

class _StatusTile extends StatelessWidget {
  final String icon;
  final String label;

  const _StatusTile({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon, width: 32, height: 32),
          const SizedBox(height: 6),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 10,
              color: secondaryColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

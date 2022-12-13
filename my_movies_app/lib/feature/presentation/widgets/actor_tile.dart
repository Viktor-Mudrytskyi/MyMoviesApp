import 'package:flutter/material.dart';

class ActorTile extends StatelessWidget {
  const ActorTile({super.key, required this.name});
  final String name;
  final String? img = null;

  @override
  Widget build(BuildContext context) {
    final list = name.split(' ');
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Theme.of(context).primaryColor,
      ),
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(list[0]),
            Text(list.length > 1 ? list[1] : ' '),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class ClubListItem extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  final Function()? onPressed;

  const ClubListItem(
      {super.key, required this.name, required this.description, required this.imageUrl, this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: ListTile(
        tileColor: kSecondaryColor,
        leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl)),
        title: Text(name),
        subtitle: Text(description, overflow: TextOverflow.ellipsis, maxLines: 1,),
        trailing: const Icon(Icons.chevron_right),
        onTap: onPressed
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class MentorsCard extends StatelessWidget {
  final String profileImgUrl;
  final String name;
  final String jobTitle;
  final String uniName;
  final Function()? onPressed;

  const MentorsCard(
      {super.key,
      required this.profileImgUrl,
      required this.name,
      required this.jobTitle,
      required this.uniName,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              AssetsGen.images.headBg.image(
                  width: double.infinity, height: 68, fit: BoxFit.fill),
              Positioned(
                top: 20, // Adjust the position based on your layout
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: NetworkImage(
                    profileImgUrl, // Replace with actual image URL
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 48),
          // Adjust for the overlap of the CircleAvatar
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Poppins'),
          ),
          const SizedBox(height: 4),
          Text(
            jobTitle,
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 14,
                fontFamily: 'Poppins'),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/24', // Replace with actual image URL
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    uniName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 11,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: SduButton.secondary(
                label: 'APPLY',
                size: SduButtonSize.second,
                onPressed: onPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

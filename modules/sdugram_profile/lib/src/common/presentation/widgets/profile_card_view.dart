import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';

class ProfileCardView extends StatelessWidget {
  const ProfileCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.65, // Adjust the ratio based on your content
      ),
      itemCount: 4, // Number of cards you want in grid
      itemBuilder: (context, index) {
        return const ProfileCard();
      },
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Colors.white,
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
              const Positioned(
                top: 20, // Adjust the position based on your layout
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150', // Replace with actual image URL
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 48),
          // Adjust for the overlap of the CircleAvatar
          const Text(
            'Askar Aitulov',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Poppins'),
          ),
          const SizedBox(height: 4),
          Text(
            'Fullstack Developer',
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
                    'Suleyman Demirel University',
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

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: SduButton.secondary(
                label: 'APPLY',
                size: SduButtonSize.second,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

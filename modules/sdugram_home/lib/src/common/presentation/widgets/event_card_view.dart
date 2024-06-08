import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sdugram_core/presentation.dart';

class EventCardView extends StatefulWidget {
  EventCardView({
    super.key,
    required this.logoUrl,
    required this.clubName,
    required this.info,
    this.isSaved = false,
    required this.time,
    this.onTap,
    required this.bgUrl,
    this.onSave,
    this.onUndoSave,
  });

  final String logoUrl;
  final String bgUrl;
  final String clubName;
  final String info;
  late bool isSaved;
  final String time;
  final Function()? onTap;
  final Function()? onSave;
  final Function()? onUndoSave;

  @override
  State<EventCardView> createState() => _SocialMediaCardState();
}

class _SocialMediaCardState extends State<EventCardView> {

  void _toggleSave() async {
    if (widget.isSaved) {
      if (widget.onUndoSave != null) {
        await widget.onUndoSave!();
      }
    } else {
      // Call the API to add to saved
      if (widget.onSave != null) {
        await widget.onSave!();
      }
    }

    setState(() {
      widget.isSaved = !widget.isSaved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Card.filled(
        color: kSecondaryColor,
        // margin: const EdgeInsets.all(16),
        clipBehavior: Clip.antiAlias,
        // Add this line to respect the borderRadius
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(1), // Adjust the corner radius here
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 16,
                backgroundImage:
                    NetworkImage(widget.logoUrl), // Put your local image here
              ),
              title: Text(
                widget.clubName,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              ),
              // trailing: const Icon(Icons.bookmark_outlined),
              trailing: IconButton(
                icon: Icon(
                  widget.isSaved
                      ? Icons.bookmark
                      : Icons.bookmark_outline,
                  color: kDefaultTextColor,
                ),
                onPressed: _toggleSave,
                  // Add your logic here


                  // setState(() {
                  //   widget.isSaved = !widget.isSaved;
                  // });
                  // print('Before widget save article');
                  // widget.onSave;
                  // print('After widget save article');
              ),
            ),
            Image.network(
                widget.bgUrl,
                width: double.infinity, height: 390, fit: BoxFit.cover
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    widget.info,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: widget.onTap,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          'more',
                          style: TextStyle(
                              fontSize: 12,
                              color: kDefaultTextColor,
                              fontFamily: 'Poppins'),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: kDefaultTextColor,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.time,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

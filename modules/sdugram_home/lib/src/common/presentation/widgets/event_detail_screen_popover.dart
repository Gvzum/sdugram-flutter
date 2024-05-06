import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';


class EventDetailScreenPopover extends StatelessWidget {
  const EventDetailScreenPopover(
      {super.key,
      required this.startTime,
      required this.location,
      required this.quantity,
      this.price,
      required this.title,
      required this.body,
      required this.username,
      required this.onPressed,
      this.categories,
      this.subtitle,
      required this.image});

  final String startTime;
  final String location;
  final int quantity;
  final String? price;
  final String title;
  final String body;
  final String? subtitle;
  final String image;
  final String username;
  final List<String>? categories;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        children: [
          Stack(
            // alignment: Alignment.topRight,
            children: <Widget>[
              SizedBox(
                // Assuming the image is a network image
                height: 200.0, // Set image height
                width: double.infinity,
                // Assuming the image is a network image
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  context.router.popForced();
                },
                alignment: Alignment.topLeft,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: SduChip(
                    text: username,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        const SizedBox(height: 4),
                        subtitle != null
                            ? Text(
                                subtitle!,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                ),
                              )
                            : const SizedBox.shrink(),
                        categories != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: SizedBox(
                                  height: 32,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: categories!.length,
                                      itemBuilder: (context, index) {
                                        final category = categories![index];
                                        return SduChip(text: category);
                                      }),
                                ),
                              )
                            : const SizedBox.shrink(),
                        const Text(
                          'DETAILS',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: kSearchIconColor),
                        ),
                        ListTile(
                          leading: const IconBackgroundView(
                              icon: Icon(
                            Icons.calendar_today,
                            color: kPrimaryColor,
                          )),
                          title: const Text(
                            'Date',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(startTime),
                        ),
                        ListTile(
                          leading: const IconBackgroundView(
                            icon: Icon(
                              Icons.location_on,
                              color: kPrimaryColor,
                            ),
                          ),
                          title: const Text(
                            'Location',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(location),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          body,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 80,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$quantity ticket',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        price == null ? 'Free' : '$price ₸',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: SduButton.primary(
                    label: 'Buy ticket',
                    size: SduButtonSize.first,
                    onPressed: onPressed,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

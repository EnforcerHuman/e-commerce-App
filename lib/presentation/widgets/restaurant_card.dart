import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String cuisine;
  final String location;
  final double distance;
  final double rating;
  final int deliveryTime;
  final String imageUrl;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.cuisine,
    required this.location,
    required this.distance,
    required this.rating,
    required this.deliveryTime,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double cardWidth = width * 0.7;
    final double imageWidth = cardWidth * 0.3;
    final double imageHeight = imageWidth;
    final double textSize = width * 0.04;
    const double spacing = 10;

    return Padding(
      padding: const EdgeInsets.all(spacing),
      child: SizedBox(
        width: cardWidth,
        child: Row(
          children: [
            SizedBox(
              width: imageWidth,
              height: imageHeight,
              child: Image.asset(
                errorBuilder: (context, error, stackTrace) {
                  return const Text('no image');
                },
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: spacing),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$cuisine, $location',
                    style: TextStyle(
                      fontSize: textSize * 0.8,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: spacing),
                  Row(
                    children: [
                      Icon(Icons.location_on,
                          size: textSize * 0.8, color: Colors.grey[600]),
                      Text(
                        '${distance.toStringAsFixed(1)} kms',
                        style: TextStyle(
                            fontSize: textSize * 0.8, color: Colors.grey[600]),
                      ),
                      SizedBox(width: spacing),
                      Icon(Icons.star,
                          size: textSize * 0.8, color: Colors.amber),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          fontSize: textSize * 0.8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: spacing),
                      Icon(Icons.access_time,
                          size: textSize * 0.8, color: Colors.grey[600]),
                      Text(
                        '$deliveryTime mins',
                        style: TextStyle(
                            fontSize: textSize * 0.8, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

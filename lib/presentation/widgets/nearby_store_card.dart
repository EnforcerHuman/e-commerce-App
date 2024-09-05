import 'package:flutter/material.dart';

class NearbyStoreCard extends StatelessWidget {
  final String name;
  final String cuisine;
  final double rating;
  final String deliveryTime;
  final String discount;
  final String itemsAvailable;
  final String imageUrl;

  const NearbyStoreCard({
    super.key,
    required this.name,
    required this.cuisine,
    required this.rating,
    required this.deliveryTime,
    required this.discount,
    required this.itemsAvailable,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Container(
      padding: EdgeInsets.all(isSmallScreen ? 12.0 : 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StoreImage(
            imageUrl: 'assets/images/nearby_store.png',
            isSmallScreen: isSmallScreen,
          ),
          SizedBox(width: isSmallScreen ? 12 : 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _StoreHeader(
                  name: name,
                  rating: rating,
                  isSmallScreen: isSmallScreen,
                ),
                const SizedBox(height: 4),
                _StoreDetails(
                  cuisine: cuisine,
                  deliveryTime: deliveryTime,
                  isSmallScreen: isSmallScreen,
                ),
                const SizedBox(height: 8),
                const Divider(),
                _StoreFooter(
                  discount: discount,
                  itemsAvailable: itemsAvailable,
                  isSmallScreen: isSmallScreen,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StoreImage extends StatelessWidget {
  final String imageUrl;
  final bool isSmallScreen;

  const _StoreImage({
    required this.imageUrl,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        imageUrl,
        width: isSmallScreen ? 80 : 100,
        height: isSmallScreen ? 80 : 100,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: isSmallScreen ? 80 : 100,
            height: isSmallScreen ? 80 : 100,
            color: Colors.grey[300],
            child: Icon(
              Icons.broken_image,
              size: isSmallScreen ? 40 : 50,
            ),
          );
        },
      ),
    );
  }
}

class _StoreHeader extends StatelessWidget {
  final String name;
  final double rating;
  final bool isSmallScreen;

  const _StoreHeader({
    required this.name,
    required this.rating,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            name,
            style: TextStyle(
              fontSize: isSmallScreen ? 16 : 20,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 8),
        Row(
          children: [
            Icon(
              Icons.star,
              size: isSmallScreen ? 16 : 18,
              color: Colors.amber,
            ),
            const SizedBox(width: 4),
            Text(
              rating.toString(),
              style: TextStyle(
                fontSize: isSmallScreen ? 14 : 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _StoreDetails extends StatelessWidget {
  final String cuisine;
  final String deliveryTime;
  final bool isSmallScreen;

  const _StoreDetails({
    required this.cuisine,
    required this.deliveryTime,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              cuisine,
              style: TextStyle(fontSize: isSmallScreen ? 12 : 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const Spacer(),
        Text(
          deliveryTime,
          style: TextStyle(
            fontSize: isSmallScreen ? 14 : 16,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _StoreFooter extends StatelessWidget {
  final String discount;
  final String itemsAvailable;
  final bool isSmallScreen;

  const _StoreFooter({
    required this.discount,
    required this.itemsAvailable,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 16,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.local_offer,
              size: isSmallScreen ? 16 : 18,
              color: Colors.red,
            ),
            const SizedBox(width: 4),
            Text(
              discount,
              style: TextStyle(
                fontSize: isSmallScreen ? 14 : 16,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.shopping_basket,
              size: isSmallScreen ? 16 : 18,
              color: Colors.green,
            ),
            const SizedBox(width: 4),
            Text(
              itemsAvailable,
              style: TextStyle(
                fontSize: isSmallScreen ? 14 : 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

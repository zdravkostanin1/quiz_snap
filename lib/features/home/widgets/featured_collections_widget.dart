import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FeaturedCollections extends StatelessWidget {
  const FeaturedCollections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            "Featured Collections",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(height: 15.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FeatureCollectionWidget(
                title: 'Computer Science',
                iconData: LucideIcons.cpu,
              ),
              SizedBox(width: 15.0),
              FeatureCollectionWidget(
                title: "Physics",
                iconData: LucideIcons.atom,
              ),
              SizedBox(width: 15.0),
              FeatureCollectionWidget(
                title: "Anime",
                iconData: LucideIcons.cat,
              ),
              SizedBox(width: 15.0),
            ],
          ),
        ),
      ],
    );
  }
}

class FeatureCollectionWidget extends StatelessWidget {
  final String title;
  final IconData iconData;

  const FeatureCollectionWidget({
    super.key,
    required this.title,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      height: 140.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 40.0, color: Colors.black),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.blueGrey, fontSize: 17.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

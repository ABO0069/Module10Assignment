import 'package:flutter/material.dart';
import 'package:course_card_ui/course.dart';

//this here is the course card widget
class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 10, 
            child: Image.asset(
              course.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
            child: Wrap(
              spacing : 8.0,
              runSpacing: 4.0,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _buildBadgeItem(null, "ব্যাচ ${course.batchno}"),
                const SizedBox(width: 8),
                _buildBadgeItem(Icons.people, course.seatCount),
                const SizedBox(width: 8),
                _buildBadgeItem(Icons.access_time, course.daysLeft),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              course.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          const Spacer(flex: 3), 

          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'বিস্তারিত দেখুন',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, size: 18, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBadgeItem(IconData? icon, String text) {
    Widget content;
    if (icon == null) {
      content = Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.grey[800]),
      );
    } else {
      content = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: Colors.grey[700],
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.grey[800]),
          ),
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: content,
    );
  }
}
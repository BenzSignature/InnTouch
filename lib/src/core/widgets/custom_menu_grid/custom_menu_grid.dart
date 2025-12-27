import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomMenuGrid extends StatelessWidget {
  const CustomMenuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        childAspectRatio: 1.1,
        children: const [
          CustomMenuIcon(icon: Icons.hotel_class, label: 'Rooms & Suites'),
          CustomMenuIcon(icon: Icons.restaurant, label: 'Restaurants'),
          CustomMenuIcon(icon: Icons.pool, label: 'Facilities'),
          CustomMenuIcon(icon: Icons.rate_review, label: 'Reviews'),
          CustomMenuIcon(icon: Icons.photo_library, label: 'Gallery'),
          CustomMenuIcon(icon: Icons.location_on, label: 'Location'),
        ],
      ),
    );
  }
}

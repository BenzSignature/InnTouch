import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class CustomCurrentStayCard extends StatelessWidget {
  final String imagePath;
  final String checkInDate;
  final String checkOutDate;
  final String roomNumber;
  final String bookingId;

  const CustomCurrentStayCard({
    super.key,
    this.imagePath = 'assets/images/image_banner_2.png',
    this.checkInDate = '28 Dec 2025',
    this.checkOutDate = '30 Dec 2025',
    this.roomNumber = 'Suite 504',
    this.bookingId = '#IT-9921',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondaryGray,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.accentGold.withOpacity(0.5),
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDate(label: 'Check-in', date: checkInDate),
                    Icon(
                      Icons.arrow_right_alt,
                      color: AppColors.accentGold,
                      size: 30,
                    ),
                    CustomDate(label: 'Check-out', date: checkOutDate),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Divider(color: Colors.white10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomInfoItem(
                      icon: Icons.meeting_room,
                      label: 'Room',
                      value: roomNumber,
                    ),
                    CustomInfoItem(
                      icon: Icons.confirmation_number,
                      label: 'Booking ID',
                      value: bookingId,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class MyStaysView extends GetView<MyStaysController> {
  const MyStaysView({super.key});

  @override
  Widget build(BuildContext context) {
    bool hasBooking = true;

    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: CustomText(
          'My_Stay'.tr,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.accentGold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              hasBooking
                  ? CustomCurrentStayCard(
                      checkInDate: '01 Jan 2026',
                      checkOutDate: '05 Jan 2026',
                      roomNumber: 'Deluxe 101',
                      bookingId: '#IN-2026',
                    )
                  : _buildNoBookingCard(),
              const SizedBox(height: 32),
              CustomGuestServices(),
              const SizedBox(height: 32),
              const CustomPreviousStays(
                itemCount: 5,
                imagePath: 'assets/images/image_banner_1.png',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNoBookingCard() {
    return Container();
  }
}

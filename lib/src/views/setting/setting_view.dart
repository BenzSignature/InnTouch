import 'package:get/get.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/widgets/export_widget.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        // leading: Icon(Icons.),
        centerTitle: true,
        title: const CustomText('Setting'),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CustomText('Logout'),
                  IconButton(
                    icon: const Icon(Icons.logout),
                    tooltip: 'Sign Out',
                    onPressed: () {
                      controller.signOut();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

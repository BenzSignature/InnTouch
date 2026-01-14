import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';

class PersonalProfileController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    _loadCurrentUserData();
  }

  void _loadCurrentUserData() {
    try {
      final homeController = Get.find<HomeController>();

      nameController.text = homeController.user.value?.name ?? "";
      emailController.text = homeController.user.value?.email ?? "";
      phoneController.text = homeController.user.value?.phone ?? "";
      
      print("โหลดข้อมูลชื่อเดิมสำเร็จ: ${nameController.text}");
    } catch (e) {
      print("ไม่สามารถดึงข้อมูล User ได้: $e");
    }
  }

  void getBack() {
    Get.back();
  }

  void pickImage() {
    print("เลือกรูปภาพใหม่");
  }

  void updateProfile() {
    String name = nameController.text;
    String email = emailController.text;
    String phone = phoneController.text;

    print("กำลังบันทึกข้อมูลใหม่: $name, $email, $phone");
    
    // ขั้นตอนต่อไปคือการเขียนคำสั่งอัปเดตไปที่ Firebase Firestore ครับ
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.onClose();
  }
}

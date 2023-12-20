import 'package:get/get.dart';

class AuthController extends GetxController{

  RxBool isEmailValidate = true.obs;
  RxBool isEmailValidateButton = false.obs;
  bool isSelectedGenderTile = false;

  void setSelectedGenderTile() {
    isSelectedGenderTile = !isSelectedGenderTile;
    update();
  }

}
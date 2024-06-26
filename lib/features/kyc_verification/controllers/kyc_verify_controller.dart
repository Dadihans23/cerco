import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/kyc_verification/domain/reposotories/kyc_verify_repo.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import '../../../data/api/api_client.dart';



class KycVerifyController extends GetxController implements GetxService {
  final KycVerifyRepo kycVerifyRepo;
  KycVerifyController({required this.kycVerifyRepo});
  List<XFile>? _imageFile;
  List<XFile> _identityImage = [];
  List<XFile> get identityImage => _identityImage;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final List<String> _dropList = [
    'Attestation d\'Identité (ONECI)',
    'Carte Nationale d\'Identité (CNI)',
    'Passeport Ivoirien',
    'Titre provisoire de sejour (ONI)',
    'Carte de resident etranger',
    'Passeport Nationale d\'Identité (Tous les pays)',
    'Couverture Maladie Universelle(CMU)',
    'Carte Nationale d\'Identité (CEDEAO)',
  ];

  List<String> get dropList => _dropList;

  String _dropDownSelectedValue = 'Attestation d\'Identité (ONECI)';
  String get dropDownSelectedValue => _dropDownSelectedValue;

  void dropDownChange(String value) {
    _dropDownSelectedValue = value;
    update();
  }

  void initialSelect() {
    _dropDownSelectedValue = 'Attestation d\'Identité (ONECI)';
    _identityImage = [];
    _isLoading = false;
  }

  void pickImage(bool isRemove) async {
    final ImagePicker picker = ImagePicker();
    if (isRemove) {
      _imageFile = [];
    } else {
      _imageFile = await picker.pickMultiImage(imageQuality: 30);
      if (_imageFile != null) {
        _identityImage.addAll(_imageFile!);
      }
    }
    update();
  }

  void removeImage(int index) {
    _identityImage.removeAt(index);
    update();
  }

  List<MultipartBody>? _multipartBody;

  Future<void> kycVerify(String idNumber) async {
    Map<String, String> field = {
      'identification_number': idNumber,
      'identification_type': _dropDownSelectedValue == 'Attestation d\'Identité (ONECI)' ? 'Attestation d\'Identité (ONECI)'
          : _dropDownSelectedValue == 'Carte Nationale d\'Identité (CNI)' ? 'Carte Nationale d\'Identité (CNI)'
          : _dropDownSelectedValue == 'Passeport Ivoirien' ? 'Passeport Ivoirien'
          : _dropDownSelectedValue == 'Titre provisoire de sejour (ONI)' ? 'Titre provisoire de sejour (ONI)'
          : _dropDownSelectedValue == 'Carte de resident etranger' ? 'Carte de resident etranger'
          : _dropDownSelectedValue == 'Passeport Nationale d\'Identité (Tous les pays)' ? 'Passeport Nationale d\'Identité (Tous les pays)'
          : _dropDownSelectedValue == 'Couverture Maladie Universelle(CMU)' ? 'Couverture Maladie Universelle(CMU)'
          : _dropDownSelectedValue == 'Carte Nationale d\'Identité (CEDEAO)' ? 'Carte Nationale d\'Identité (CEDEAO)' : 'select_identity_type',
      '_method': 'put'
    };
    _multipartBody = _identityImage.map((image) => MultipartBody('identification_image[]', File(image.path))).toList();
    _isLoading = true;
    update();
    Response response = await kycVerifyRepo.kycVerifyApi(field, _multipartBody);
    if (response.body['response_code'] == 'default_update_200') {
      Get.back();
      showCustomSnackBarHelper(response.body['message'], isError: false);
    } else {
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    update();
  }
}




    // "Attestation d'Identité (ONECI)",
    // "Carte National d'Identité (CNI)",
    // "Passeport Ivoirien ",
    // "Titre provisoire de sejour (ONI)",
    // "Carte de resident etranger ",
    // "Passeport Nationa d'Identité (Tous les pays)",
    // "Couverture Maladie Universelle(CMU)",
    // "Carte Nationale d'Identité (CEDEAO)",
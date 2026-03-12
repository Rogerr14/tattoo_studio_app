


import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tatto_studio_app/shared/model/user_model.dart';

class SecureStorage {
  static AndroidOptions _getAndroidOptions() =>  const AndroidOptions(encryptedSharedPreferences: true,storageCipherAlgorithm: StorageCipherAlgorithm.AES_GCM_NoPadding, keyCipherAlgorithm: KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding, preferencesKeyPrefix: 'teo_secure_',  );
  final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());


Future<UserModel?> getUserData() async {
    final data = await storage.read(key: 'userCredentials');
    if (data != null) {
      UserModel response = userModelFromJson(data);
      return response;
    }
    return null;
  }

   void setUserCredentials(UserModel userModel) async {
    final data = jsonEncode(userModel);
    await storage.write(key: 'userCredentials', value: data);
  }

}
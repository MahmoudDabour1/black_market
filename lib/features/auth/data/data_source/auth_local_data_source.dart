import 'package:black_market/core/utils/app_constants.dart';
import 'package:black_market/features/auth/data/models/login_response_model.dart';
import 'package:hive/hive.dart';

abstract class AuthLocalDataSource {
  Future<void> cachedUserData(LoginResponseModel loginResponseModel);
  Future<void> clearCachedUserData();

  LoginResponseModel? getCachedUserData();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  Box<LoginResponseModel> userBox = Hive.box<LoginResponseModel>(kUserBox);
  @override
  Future<void> cachedUserData(LoginResponseModel loginResponseModel) async {
    await userBox.put(kUserData, loginResponseModel);
  }

  @override
  LoginResponseModel? getCachedUserData() {
    return userBox.get(kUserData);
  }

  @override
  Future<void> clearCachedUserData() async {
    await userBox.delete(kUserData);
  }
}

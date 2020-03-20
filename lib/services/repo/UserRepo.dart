import 'package:kip/models/User.dart';
import 'package:kip/services/db/DatabaseProvider.dart';
import 'package:kip/services/network/api/ApiResult.dart';

abstract class UserRepo {
  DatabaseProvider databaseProvider;

  Future insert(User data);

  Future update(User data);

  Future delete(User data);

  Future<User> getFromDb();

  /// login with email and pass
  /// returns user with avatar
  Future<ApiResult<User>> login(String email, String pass);

  /// sign up with email and pass
  /// returns user with random avatar
  Future<ApiResult<User>> register(String email, String pass);
}

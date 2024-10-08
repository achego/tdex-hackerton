import 'package:client/global_exports.dart';

class MyProfileController extends GetxController {
  final user = appController.user.value;
  List<KeyValueModel> get myProfileItems => [
        KeyValueModel(itemKey: 'Username', value: '@${user.userName}'),
        KeyValueModel(
            itemKey: 'Firstname',
            value: '${user.fullName?.split(' ').first.capitalizeFirst}'),
        KeyValueModel(
            itemKey: 'Lastname',
            value: '${user.fullName?.split(' ').last.capitalizeFirst}'),
        KeyValueModel(itemKey: 'Email', value: user.email),
        KeyValueModel(itemKey: 'Phone', value: user.phone),
        KeyValueModel(
            itemKey: 'Date Joined', value: user.createdAt.toDate.formatDate),
      ];
}

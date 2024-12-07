import 'package:client/app/data/providers/user_provider.dart';
import 'package:client/app/modules/features/donation/models/donation/donation_model.dart';
import 'package:client/global_exports.dart';

final donateService = Get.put(DonateService());

class DonateService extends GetxController {
  final isGettingDonations = false.obs;
  final allDonationsRequest = <DonationModel>[].obs;

  getDonationsRequest() async {
    showLoading();
    final resp = await UserProvider.getDontaions();
    showLoading(show: false);
    if (!resp.isOk) {
      AppNotifications.snackbar(message: 'An error occurred getting donations');
      return;
    }

    allDonationsRequest.value = resp.data ?? [];
  }
}

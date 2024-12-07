import 'package:client/app/components/custom_cached_network_imge.dart';
import 'package:client/app/modules/features/donation/services/donate_service.dart.dart';
import 'package:client/global_exports.dart';
import 'package:flutter/widgets.dart';

class DonateOverviewPage extends StatelessWidget {
  const DonateOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'Donation & Support'),
      bottomNavigationBar: BottomNavContainer(
        child: CustomButton(
          onPressed: _handleProceed,
          title: 'Donate',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose a cause that resonates with your heart and help those in need. Every little bit counts! Together, we can make the world a better place',
            style: TextStyles.base(),
          ),
          spaceh(10),
          Expanded(
            child: SingleChildScrollView(
              child: CustomSeparatedListView(
                  shrinkWrap: true,
                  itemBuilder: (conetxt, index) {
                    final donation = donateService.allDonationsRequest[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      child: Row(
                        children: [
                          rectangle(60, 85,
                              child: CustomCachedImage(
                                  imageUrl: donation.image_url)),
                          spaceh(10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  donation.title,
                                  style: TextStyles.base(fontSizeDiff: -1),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                spaceh(4),
                                Text(donation.content_sub,
                                    style: TextStyles.base(
                                        fontSizeDiff: -2, primary: false),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                                spaceh(4),
                                Text(
                                  'Read More',
                                  style: TextStyles.base(fontSizeDiff: 1)
                                      .copyWith(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: donateService.allDonationsRequest.length),
            ),
          )
          // ListView.builder(
          //   itemCount: donateService.allDonationsRequest.length,
          //   itemBuilder: (context, index) {
          //     final donation = donateService.allDonationsRequest[index];
          //     return ;
          //   },
          // )
        ],
      ).defPadX,
    );
  }

  void _handleProceed() {}
}

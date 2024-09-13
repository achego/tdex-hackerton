import 'dart:math';

import 'package:client/app/data/models/pfi_offering_model/pfi_offering_model.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_binding.dart';
import 'package:client/global_exports.dart';

class SendByPfiPage extends StatelessWidget {
  const SendByPfiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomScaffold(
        appBar: const CustomAppBar(title: 'Send By PFI'),
        bottomNavigationBar: BottomNavContainer(
          child: CustomButton(
            onPressed: sendByPfiController.handleProceed,
            title: 'Proceed',
          ),
        ),
        body: Form(
          key: sendByPfiController.sendPfiKey,
          child: Column(
            children: [
              spaceh(20),
              CustomTextFormField(
                hintText: 'Select a currency you want to send from',
                labelText: 'Send from',
                readOnly: true,
                onTap: sendByPfiController.pickFromCurrency,
                controller: sendByPfiController.from,
                validator: Validator.validateFieldNotEmpty,
                trailling: Transform.rotate(
                    angle: pi / 2, child: const Icon(Icons.chevron_right)),
              ),
              spaceh(35),
              CustomTextFormField(
                hintText: 'Select a currency you want to send to',
                labelText: 'Send to',
                readOnly: true,
                onTap: sendByPfiController.pickToCurrency,
                controller: sendByPfiController.to,
                validator: Validator.validateFieldNotEmpty,
                trailling: Transform.rotate(
                    angle: pi / 2, child: const Icon(Icons.chevron_right)),
              ),
              spaceh(60),
              AnimatedSwitcher(
                duration: 1000.milliseconds,
                child: sendByPfiController.matchingofferings.isNotEmpty
                    ? CustomSeparatedListView(
                        label: 'PFI offerings',
                        clipBehavior: Clip.antiAlias,
                        padding: EdgeInsets.zero,
                        itemBuilder: (conetxt, index) {
                          final pfi =
                              sendByPfiController.matchingofferings[index];
                          return PFIOfferingItem(pfi: pfi);
                        },
                        itemCount: sendByPfiController.matchingofferings.length)
                    : const SizedBox.shrink(),
              )
            ],
          ),
        ).defPadX,
      ),
    );
  }
}

class PFIOfferingItem extends StatelessWidget {
  const PFIOfferingItem({
    super.key,
    required this.pfi,
  });

  final PfiOfferingModel pfi;

  @override
  Widget build(BuildContext context) {
    final isSelected =
        sendByPfiController.selecetedOffering.value.metadata?.id ==
            pfi.metadata?.id;
    return CustomGestureDetector(
      onTap: () {
        sendByPfiController.selecetedOffering(pfi);
      },
      child: AnimatedContainer(
        duration: 300.milliseconds,
        color: isSelected ? AppColors.color.border : null,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pfi.getPfidetails?.name ?? '',
              style: TextStyles.base(fontSizeDiff: 5),
            ),
            spaceh(5),
            Text(
              pfi.data?.description ?? '',
              style: TextStyles.base(primary: false),
            ),
            spaceh(5),
            Text(
              'Rate: ${pfi.data?.payoutUnitsPerPayinUnit} ${pfi.data?.payin?.currencyCode} for 1 ${pfi.data?.payout?.currencyCode} ',
              style: TextStyles.base(primary: false)
                  .copyWith(color: AppColors.color.primary),
            )
          ],
        ),
      ),
    );
  }
}

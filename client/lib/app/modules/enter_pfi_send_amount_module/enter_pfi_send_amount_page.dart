import 'dart:math';

import 'package:client/app/data/models/pfi_offering_model/pfi_offering_model.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_binding.dart';
import 'package:client/global_exports.dart';

class EnterPfiSendAmountPage extends StatelessWidget {
  const EnterPfiSendAmountPage({super.key, required this.offering});

  final PfiOfferingModel offering;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
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
          ],
        ),
      ).defPadX,
    );
  }
}

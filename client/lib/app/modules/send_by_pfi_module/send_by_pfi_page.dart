// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:client/app/components/app_divider.dart';
import 'package:client/app/components/custom_gesture_detector.dart';
import 'package:client/app/data/models/pfi_offering_model/pfi_offering_model.dart';
import 'package:client/app/modules/send_by_pfi_module/send_by_pfi_binding.dart';
import 'package:client/global_exports.dart';

class SendByPfiPage extends StatefulWidget {
  const SendByPfiPage({super.key});

  @override
  State<SendByPfiPage> createState() => _SendByPfiPageState();
}

class _SendByPfiPageState extends State<SendByPfiPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sendByPfiController.init();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final selectedOffering = sendByPfiController.selecetedOffering.value;
        return CustomScaffold(
          appBar: const CustomAppBar(title: 'Send By PFI'),
          bottomNavigationBar: BottomNavContainer(
            child: CustomButton(
              onPressed: sendByPfiController.handleProceed,
              title: 'Proceed',
            ),
          ),
          body: SingleChildScrollView(
            child: Form(
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
                              final isSelected =
                                  selectedOffering.metadata?.id ==
                                      pfi.metadata?.id;
                              return CustomGestureDetector(
                                onTap: () =>
                                    sendByPfiController.selecetedOffering(pfi),
                                child: PFIOfferingItem(
                                  pfi: pfi,
                                  isSelected: isSelected,
                                ),
                              );
                            },
                            itemCount:
                                sendByPfiController.matchingofferings.length)
                        : const SizedBox.shrink(),
                  )
                ],
              ),
            ).defPadX,
          ),
        );
      },
    );
  }
}

class PFIOfferingItem extends StatefulWidget {
  const PFIOfferingItem({
    super.key,
    required this.pfi,
    required this.isSelected,
  });

  final PfiOfferingModel pfi;
  final bool isSelected;

  @override
  State<PFIOfferingItem> createState() => _PFIOfferingItemState();
}

class _PFIOfferingItemState extends State<PFIOfferingItem> {
  bool isCommentsShown = false;
  @override
  Widget build(BuildContext context) {
    double totalRate = 0;
    final pfiRatings = appController.pfiRatings
        .where((rate) => rate.pfiDid == widget.pfi.metadata?.from)
        .toList();
    final ratingWithComments =
        pfiRatings.where((element) => (element.comment ?? '').isNotEmpty);
    for (var element in pfiRatings) {
      totalRate += element.rate ?? 0;
    }
    final avRating = totalRate / (pfiRatings.isEmpty ? 1 : pfiRatings.length);
    return AnimatedContainer(
      duration: 300.milliseconds,
      color: widget.isSelected ? AppColors.color.border : Colors.transparent,
      // padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          spaceh(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.pfi.getPfidetails?.name ?? '',
                style: TextStyles.base(fontSizeDiff: 5),
              ),
              spaceh(5),
              Text(
                widget.pfi.data?.description ?? '',
                style: TextStyles.base(primary: false),
              ),
              spaceh(5),
              Text(
                'Rate: ${widget.pfi.data?.payoutUnitsPerPayinUnit} ${widget.pfi.data?.payin?.currencyCode} for 1 ${widget.pfi.data?.payout?.currencyCode} ',
                style: TextStyles.base(primary: false)
                    .copyWith(color: AppColors.color.primary),
              ),
              spaceh(5),
              Row(
                children: [
                  ...List.generate(
                    avRating.round(),
                    (index) {
                      if (index == avRating.round() - 1 &&
                          avRating.round() > avRating) {
                        return const Icon(
                          Icons.star_half_rounded,
                          color: Colors.amber,
                        );
                      }
                      return const Icon(
                        Icons.star_rounded,
                        color: Colors.amber,
                      );
                    },
                  )
                ],
              ),
              // Text(
              //   'Averate rating ${avRating.toStringAsFixed(1)}',
              //   style: TextStyles.base(primary: false)
              //       .copyWith(color: AppColors.color.white),
              // ),
            ],
          ).defPadX,
          spaceh(10),
          if (ratingWithComments.isNotEmpty)
            CustomGestureDetector(
              onTap: () {
                setState(() {
                  isCommentsShown = !isCommentsShown;
                });
              },
              child: Container(
                color: AppColors.color.primary.withOpacity(0.3),
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          isCommentsShown ? 'Hide Comments' : 'Show comments',
                          style: TextStyles.base(),
                        ),
                        spacew(10),
                        svgAsset(AppIconSvgs.caratRight),
                      ],
                    ),
                    if (isCommentsShown) spaceh(10),
                    ClipRRect(
                      child: AnimatedAlign(
                        alignment: Alignment.centerLeft,
                        heightFactor: isCommentsShown ? 1 : 0,
                        duration: 300.milliseconds,
                        child: Column(children: [
                          ...ratingWithComments.map((e) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AppDivider(),
                                    spaceh(10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          e.raterName ?? "",
                                          style: TextStyles.base().copyWith(
                                              color: AppColors.color.primary),
                                        ),
                                        Text(e.createdAt.toDate.formatDate),
                                      ],
                                    ),
                                    spaceh(5),
                                    Text(
                                      e.comment ?? "",
                                      style: TextStyles.base().copyWith(),
                                    ),
                                    spaceh(10),
                                    const AppDivider(),
                                  ],
                                ),
                              ))
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

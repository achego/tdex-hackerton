import 'package:client/app/modules/transaction_success_module/transaction_success_binding.dart';
import 'package:client/app/modules/transactions_module/transactions_controller.dart';
import 'package:client/global_exports.dart';

class TransactionSuccessPage extends StatefulWidget {
  const TransactionSuccessPage({super.key});

  @override
  State<TransactionSuccessPage> createState() => _TransactionSuccessPageState();
}

class _TransactionSuccessPageState extends State<TransactionSuccessPage> {
  @override
  void initState() {
    super.initState();
    transactionsController.getQuotedTransaction();
    transactionsController.getTransactions();
  }

  @override
  Widget build(BuildContext context) {
    final args = transactionSuccessController.args;
    return PopScope(
      canPop: args.canPop,
      child: CustomScaffold(
        bottomNavigationBar: BottomNavContainer(
          child: CustomButton(
            onPressed: () {
              if (args.onPressed != null) {
                args.onPressed?.call();
                return;
              }
              Nav.offAllNamed(RoutePaths.dashboard);
            },
            title: args.btnText ?? 'Back to dashboard',
          ),
        ),
        body: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    args.title,
                    textAlign: TextAlign.center,
                    style: TextStyles.heading()
                        .copyWith(color: AppColors.color.primary),
                  ),
                  spaceh(10),
                  Text(
                    args.subTitle,
                    textAlign: TextAlign.center,
                    style: TextStyles.subHeading()
                        .copyWith(color: AppColors.color.white),
                  ),
                ],
              ),
            )
          ],
        ).defPadX,
      ),
    );
  }
}

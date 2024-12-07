import 'package:client/app/data/models/balance_model/balance_model.dart';
import 'package:client/global_exports.dart';

class MoneyAndCurrencyText extends StatelessWidget {
  const MoneyAndCurrencyText({
    super.key,
    this.style,
    required this.amount,
    this.showCurrency = true,
    this.obscureAmount = false,
    this.currency,
  });

  final TextStyle? style;
  final num amount;
  final bool showCurrency;
  final bool obscureAmount;
  final BalanceModel? currency;
  // final String? currency;

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? TextStyles.base();
    final theCurrency = currency ?? appController.selectedBalance.value;
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child: !obscureAmount
            ? Row(
                mainAxisSize: MainAxisSize.min,
                key: Key('$key balance-shown'),
                children: [
                  Text(
                    '${theCurrency.getAvailableCurrency?.icon ?? ''}${amount.formatCurrency}',
                    style: baseStyle,
                  ),
                ],
              )
            : Text(
                key: Key('$key balance-hidden'),
                '****',
                style: style,
              ));
  }
}

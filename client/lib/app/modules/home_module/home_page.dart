import 'package:client/global_exports.dart';
import 'components/home_actions_area.dart';
import 'sections/quick_actions.dart';
import 'sections/recent_transactions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    logger(localStorage.auth.token, 'Token');
    return CustomScaffold(
      body: Column(
        children: [
          const HomeActionArea(),
          spaceh(10),
          Expanded(
              child: CustomSingleChildScroll(
            child: Column(
              children: [
                spaceh(20),
                const QuickActionSection(),
                spaceh(30),
                const RecentTransactionSection(),
                spaceh(30),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

// enum TransactionType { income, expense }



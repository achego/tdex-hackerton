import 'package:client/app/components/app_divider.dart';
import 'package:client/app/components/transaction_item.dart';
import 'package:client/global_exports.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'transactions_controller.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  void initState() {
    super.initState();
    transactionsController.getTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => transactionsController.getTransactions(),
          child: Column(
            children: [
              spaceh(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Transactions', style: TextStyles.heading()),
                  spaceh(15),
                  if (transactionsController.transactions.isNotEmpty)
                    const CustomTextFormField(
                      hintText: 'Start typing to search a transaction',
                    )
                ],
              ).defPadX,
              spaceh(20),
              Expanded(
                  child: transactionsController.isGettingTransactions.value
                      ? const Center(
                          child: CupertinoActivityIndicator(),
                        )
                      : const GroupedScrollItems().defPadX)
            ],
          ),
        ),
      ),
    );
  }
}

class GroupedScrollItems extends StatelessWidget {
  const GroupedScrollItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final items = groupBy(transactionsController.transactions,
        (item) => item.createdAt.toDate.formatDate);
    return CustomScrollView(slivers: [
      ...items.entries.map(
        (e) {
          return MultiSliver(
            pushPinnedChildren: true,
            children: [
              SliverPinnedHeader(
                child: Container(
                  color: AppColors.color.background,
                  padding: EdgeInsets.only(bottom: 6.h),
                  child: Text(
                    e.key,
                    style: TextStyles.subHeading().copyWith(fontSize: 14),
                  ),
                ),
              ),
              spaceh(4).toSliverBox,
              SliverStack(
                children: [
                  const SliverPositioned.fill(child: CustomCard()),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    sliver: SliverList.separated(
                      itemCount: e.value.length,
                      separatorBuilder: (context, index) => const AppDivider(),
                      itemBuilder: (context, index) {
                        final transaction = e.value[index];
                        return TransactionItem(transaction: transaction);
                      },
                    ),
                  ),
                ],
              ),
              spaceh(20).toSliverBox
            ],
          );
        },
      )
    ]);
  }
}

Map<T, List<S>> groupBy<S, T>(Iterable<S> values, T Function(S) key) {
  var map = <T, List<S>>{};
  for (var element in values) {
    (map[key(element)] ??= []).add(element);
  }
  return map;
}

// final List _elements = [
//   {'name': 'John', 'group': 'Team A'},
//   {'name': 'Will', 'group': 'Team B'},
//   {'name': 'Beth', 'group': 'Team A'},
//   {'name': 'Miranda', 'group': 'Team B'},
//   {'name': 'Mike', 'group': 'Team C'},
//   {'name': 'Danny', 'group': 'Team C'},
// ];

// List<TransactionModel> get transactions => [
//       TransactionModel(
//           title: 'Data B 1', subTitle: 'Tester', createdAt: DateTime.now()),
//       TransactionModel(
//           title: 'Data B 2', subTitle: 'Tester', createdAt: DateTime.now()),
//       TransactionModel(
//           title: 'Data B 3', subTitle: 'Tester', createdAt: DateTime.now()),
//       TransactionModel(
//           title: 'Data B 4', subTitle: 'Tester', createdAt: DateTime.now()),
//       TransactionModel(
//           title: 'Data B 12',
//           subTitle: 'Tester',
//           createdAt: DateTime.now().subtract(const Duration(days: 5))),
//       TransactionModel(
//           title: 'Data B 13',
//           subTitle: 'Tester',
//           createdAt: DateTime.now().subtract(const Duration(days: 5))),
//     ];

// class TransactionModel {
//   final String title;
//   final String subTitle;
//   final DateTime createdAt;

//   TransactionModel(
//       {required this.title, required this.subTitle, required this.createdAt});
// }

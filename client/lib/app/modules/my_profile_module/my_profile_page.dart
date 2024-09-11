import 'package:client/global_exports.dart';

import 'my_profile_binding.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'My Profile'),
      body: Column(
        children: [
          spaceh(15),
          CustomSeparatedListView(
                  showHeaderBox: true,
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppConstatnts.defPadding),
                  itemBuilder: (conetxt, index) {
                    final item = myProfileItemController.myProfileItems[index];
                    return KeyValueItem(item: item);
                  },
                  itemCount: myProfileItemController.myProfileItems.length)
              .defPadX
        ],
      ),
    );
  }
}

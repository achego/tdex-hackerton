import 'package:client/app/components/textfield_success_error_component.dart';
import 'package:client/app/data/models/user_model/user_model.dart';
import 'package:client/global_exports.dart';

import 'send_to_username_binding.dart';

class SendToUsernamePage extends StatelessWidget {
  const SendToUsernamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = sendToUsernameController;
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'Send to user'),
      bottomNavigationBar: BottomNavContainer(
        child: CustomButton(
          onPressed: ctr.handleContinue,
          title: 'Continue',
        ),
      ),
      body: Obx(
        () => CustomSingleChildScroll(
          child: Form(
            key: ctr.sendUsernameKey,
            child: Column(
              children: [
                spaceh(10),
                CustomTextFormField(
                  hintText: 'Enter a valid susername',
                  labelText: 'Username',
                  controller: ctr.username,
                  validator: (value) {
                    final validator = Validator.validateUserName(value);
                    if (validator != null) {
                      return validator;
                    }
                    if (ctr.isGettingUsername.value) {
                      return '';
                    }
                    if (ctr.gottenUser == null &&
                        ctr.username.text.length >= 3) {
                      return 'This user does not exist';
                    }
                    return null;
                  },
                  trailling: TextFieldSuccessFailureComponent(
                      isSuccess: ctr.username.text.length < 3
                          ? null
                          : ctr.gottenUser != null),
                  onChanged: (value) {
                    ctr.getUser();
                  },
                  isLoading: ctr.isGettingUsername.value,
                ),
                spaceh(40),
                if (ctr.gottenUser != null) ...[
                  SearchedUserItem(
                    user: ctr.gottenUser!,
                  ),
                  spaceh(40),
                  CustomTextFormField(
                    type: CustomTextFormFieldType.amount,
                    hintText: 'Enter amount to send',
                    labelText: 'Amount',
                    controller: ctr.amount,
                    keyboardType: TextInputType.number,
                    validator: Validator.validateAmount,
                  ),
                ]
              ],
            ).defPadX,
          ),
        ),
      ),
    );
  }
}

class SearchedUserItem extends StatelessWidget {
  const SearchedUserItem({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      child: Row(
        children: [
          square(40,
              borderRadius: 10,
              color: AppColors.color.primary,
              alignment: Alignment.center,
              child: Text(
                user.initials,
                style: TextStyles.subHeading()
                    .copyWith(color: AppColors.color.textDark),
              )),
          spacew(15),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.fullName ?? "",
                style: TextStyles.base(),
              ),
              Text(
                '@${user.userName}',
                style: TextStyles.base()
                    .copyWith(color: AppColors.color.textLight),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

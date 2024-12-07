import 'dart:async';
import 'package:client/global_exports.dart';

class AppSecurityOverlay extends StatefulWidget {
  final Widget child;
  const AppSecurityOverlay({super.key, required this.child});

  @override
  State<AppSecurityOverlay> createState() => _AppSecurityOverlayState();
}

class _AppSecurityOverlayState extends State<AppSecurityOverlay> {
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _initLockScreen();
  }

  _initLockScreen() {
    try {
      if (_timer.isActive) {
        _timer.cancel();
      }
    } catch (e) {}
    _timer = Timer(_lockTimeInMiliseconds.milliseconds, () {
      _lockScreen();
    });
  }

  _lockScreen() {
    // if (shouldLock) {
    //   Nav.to(PinPage(
    //     title: 'Welcome Back @${appController.user.value.userName}',
    //     subTitle: 'Your screen is locked, Enter your 6 didgit pin to continue',
    //     onCompleted: (pin) {
    //       Nav.back();
    //       _initLockScreen();
    //     },
    //   ));
    // }
  }

// TODO Check this
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _initLockScreen,
      child: widget.child,
    );
  }
}

List<String> get _ignoredRoutes => ['/sign_up', '/PinPage', '/', '/onboarding'];
bool get shouldLock => !_ignoredRoutes.contains(Get.currentRoute);
const _lockTimeInMiliseconds = 1000 * 60 * 0.3;

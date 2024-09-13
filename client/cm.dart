// cm stands for create module
// rund the script using dart run <modulename>

import 'dart:io';

extension _MyString on String {
  String get capFirst {
    return replaceFirst(this[0], this[0].toUpperCase());
  }

  String get camelCase {
    String text = '';
    final textSpl = split('_');
    for (var element in textSpl) {
      if (textSpl.indexOf(element) == 0) {
        text += element.toLowerCase();
      } else {
        text += element.capFirst;
      }
    }
    return text;
  }
}

String _getBindingContent({
  required String moduleName,
}) {
  return ''' 
  import 'package:get/get.dart';

import '${moduleName}_controller.dart';

class ${moduleName.camelCase.capFirst}Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(${moduleName.camelCase.capFirst}Controller());
  }
}

''';
}

String _getcontrollerContent({
  required String moduleName,
}) {
  return ''' 
  import 'package:get/get.dart';

class ${moduleName.camelCase.capFirst}Controller extends GetxController {}


''';
}

String _getPageContent({
  required String moduleName,
}) {
  return ''' 
  
import 'package:flutter/material.dart';

class ${moduleName.camelCase.capFirst}Page extends StatelessWidget {
  const ${moduleName.camelCase.capFirst}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold();
  }
}
''';
}

const _bindingText = 'binding';
const _controllerText = 'controller';
const _pageText = 'page';

createModule({
  required String modulesFolder,
  required String moduleName,
  required bool isNameRoute,
  required String routePages,
  required String routePaths,
}) async {
  final filesExts = isNameRoute
      ? [_bindingText, _pageText, _controllerText]
      : [_pageText, _controllerText];
  final filesExtContents = isNameRoute
      ? [
          _getBindingContent(moduleName: moduleName),
          _getPageContent(moduleName: moduleName),
          _getcontrollerContent(moduleName: moduleName)
        ]
      : [
          _getPageContent(moduleName: moduleName),
          _getcontrollerContent(moduleName: moduleName)
        ];

  final moduleDir = '$modulesFolder/${moduleName}_module/';
  if (await Directory(moduleDir).exists()) {
    loggerD("The Module Already exists", 'An Error Occured');
    return;
  }
  await Directory(moduleDir).create();

  for (var filesExt in filesExts) {
    final modulePath = File('$moduleDir${moduleName}_$filesExt.dart');
    modulePath.writeAsString(filesExtContents[filesExts.indexOf(filesExt)]);
  }
  if (isNameRoute) {
    _addRoutePath(routePaths: routePaths, moduleName: moduleName);
    _addRoutePage(routePages: routePages, moduleName: moduleName);
  }
}

_addRoutePath({
  required String routePaths,
  required String moduleName,
}) {
  final pathFile = File(routePaths);
  final text = pathFile.readAsStringSync();

  final newText = text.replaceAll(
      '}', '  static const ${moduleName.camelCase} = "/$moduleName"; \n }');
  pathFile.writeAsStringSync(newText);
}

_addRoutePage({
  required String routePages,
  required String moduleName,
}) {
  final pageFile = File(routePages);
  final text = pageFile.readAsStringSync();

  String newText = text.replaceAll(']', ''' 
      GetPage(
        name: RoutePaths.${moduleName.camelCase},
        page: () => const ${moduleName.camelCase.capFirst}Page(),
        binding:${moduleName.camelCase.capFirst}Binding(),
      ), \n ]
      ''');
  newText = newText.replaceAll('part', '''
    import '../app/modules/${moduleName.toLowerCase()}_module/${moduleName.toLowerCase()}_page.dart'; \n
    import '../app/modules/${moduleName.toLowerCase()}_module/${moduleName.toLowerCase()}_binding.dart'; \n part
    ''');
  pageFile.writeAsStringSync(newText);
}

void main(List<String>? args) {
  // args[0] = moduleName eg splash
  // args[1] = isNameRoute eg false
  // const outputFolderPath = 'lib/utils/localization/';
  // const localeFileName = 'app_locale';
  // const localeStringsFileName = 'app_locale_strings';
  const modulesFolder = 'lib/app/modules';
  const routePages = 'lib/routes/pages.dart';
  const routePaths = 'lib/routes/route_paths.dart';

  loggerD('', "Enter module name:");
  final moduleName = stdin.readLineSync()!;

  loggerD('', "is Named route? (1 for yes, 2 for no):");
  final isNameRouteStr = stdin.readLineSync()!;
  final bool isNameRoute = isNameRouteStr.contains('1');

  createModule(
    modulesFolder: modulesFolder,
    moduleName: moduleName.toLowerCase(),
    isNameRoute: isNameRoute,
    routePages: routePages,
    routePaths: routePaths,
  );
}

loggerD(dynamic text, [String? title, int maxChars = 200]) {
  // const maxChars = 200;
  if (true) {
    String trace = StackTrace.current.toString().split('\n')[1];
    if (trace.contains('>')) {
      if (trace.split('>').length >= 2) {
        trace = trace.split('>')[1];
      }
    }
    if (title != null) {
      print(
          '\x1B[35m${DateTime.now().hour}:${DateTime.now().second}\x1B[0m - \x1B[31m$title\x1B[0m === ${text.toString().length > maxChars ? text.toString().substring(0, maxChars) : text.toString()} $trace');
    } else {
      print(
          '${text.toString().length > maxChars ? text.toString().substring(0, maxChars) : text.toString()} $trace');
    }
  }
}

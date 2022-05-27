import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric takeTicketTest() {
  return when3<String, String, String, FlutterWorld>(
    'I tap the {string} button and tap the {String} button and tap the {String} button',
    (key, key2, key3, context) async {
      final locator = find.byValueKey(key);
      final locator2 = find.byValueKey(key2);
      final locator3 = find.byValueKey(key3);
      await FlutterDriverUtils.tap(context.world.driver, locator);
      await FlutterDriverUtils.tap(context.world.driver, locator2);
      await FlutterDriverUtils.tap(context.world.driver, locator3);
    },
  );
}

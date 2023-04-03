import 'package:core_app/core/extendable/a_core.dart';

class AClone extends ACore {
  @override
  String extendable() {
    return '${super.extendable()} A Clone';
  }
}

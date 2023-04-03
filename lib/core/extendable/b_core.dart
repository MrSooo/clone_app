import 'package:core_app/customizable/instance_provider.dart';

class BCore {
  final a_core = InstanceProvider.instanceOfA;

  String value() {
    return 'B Core value ${a_core.extendable()}';
  }
}

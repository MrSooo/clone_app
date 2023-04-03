import 'package:core_app/core/extendable/b_core.dart';
import 'package:core_app/customizable/instance_provider.dart';

class BClone extends BCore {
  final a_core = InstanceProvider.instanceOfA;

  @override
  String value() {
    return 'B Clone value --- ${a_core.extendable()}';
  }
}

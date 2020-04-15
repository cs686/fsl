import 'package:fsl/env.dart';
import 'package:fsl/main_common.dart';

Future<void> main() async {
  await mainCommon(Env.prod);
}
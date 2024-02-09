import 'package:auth/Component/contvalidate.dart';

valdatinput(String val, int min, int max) {
  if (val.isEmpty) {
    return "$messageEmptyInput";
  }
  if (val.length > max) {
    return "$messageMinInput  $max";
  }
  if (val.length < min) {
    return "$messageMaxInput  $min";
  }
}

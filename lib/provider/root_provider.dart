
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:test_final_school_flutter_mjv/provider/issue_provider.dart';

class RootProvider {
  static List<SingleChildWidget> providers() {
    return [
      ChangeNotifierProvider(create: (_) => IssueProvider()),    ];
  }
}

import 'package:basic_structure/src/ui/views/home/home_view.dart';
import 'package:basic_structure/src/ui/views/login_page/login_view.dart';

import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: HomeView, initial: true),
  MaterialRoute(page: LoginView),
])
class $Router {}

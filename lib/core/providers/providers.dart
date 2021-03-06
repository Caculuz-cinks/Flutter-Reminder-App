import 'package:Todo/core/database/categories_database.dart';
import 'package:Todo/ui/views/add_category_view_model.dart';

import 'package:Todo/ui/views/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders {
  //The providers for dependency injection and state management will be added here
  //as the app will use MultiProvider
  static final providers = <SingleChildWidget>[
    ChangeNotifierProvider(create: (_) => CategoriesData()),
    ChangeNotifierProvider(create: (_) => HomeViewModel()),
    ChangeNotifierProvider(create: (_) => AddCategoryViewModel()),
  ];
}

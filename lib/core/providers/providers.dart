import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders {
  //The providers for dependency injection and state management will be added here
  //as the app will use MultiProvider
  static final providers = <SingleChildWidget>[
    //  ChangeNotifierProvider(create: (_) => ModelNameHere()),
  ];
}
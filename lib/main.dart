import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/blocs/cart/cart_bloc.dart';
import 'package:flutter_application_1/blocs/category/category_bloc.dart';
import 'package:flutter_application_1/blocs/product/product_bloc.dart';
import 'package:flutter_application_1/blocs/wishlist/wishlist_bloc.dart';
import 'package:flutter_application_1/config/app_router.dart';
import 'package:flutter_application_1/config/theme.dart';
import 'package:flutter_application_1/repositories/category/category_repository.dart';
import 'package:flutter_application_1/repositories/product/product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
        BlocProvider(
            create: (_) => CategoryBloc(
                  categoryRepository: CategoryRepository(),
                )..add(LoadCategories())),
        BlocProvider(
            create: (_) => ProductBloc(
                  productRepository: ProductRepository(),
                )..add(LoadProducts())),
      ],
      child: MaterialApp(
        title: 'Zero To Unicorn',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: CheckoutScreen.routeName,
      ),
    );
  }
}

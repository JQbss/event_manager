import 'package:event_manager/exports/export.dart';
import 'package:event_manager/view_model/loader/loader_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoaderViewModel(),
      child: Builder(
        builder: (context){
          LoaderViewModel loaderViewModel = Provider.of<LoaderViewModel>(context);
          return Scaffold(
            body: Center(
              child: Text(AppLocalizations.of(context)!.loading),
            ),
          );
        },
      ),
    );
  }
}

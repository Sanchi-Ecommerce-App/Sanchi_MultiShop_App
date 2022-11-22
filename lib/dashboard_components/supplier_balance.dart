import 'package:flutter/material.dart';
import 'package:sanchi_multishop_app/widgets/appbar_widgets.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const AppbarBackButton(),
        title: const AppbarTitle(
          title: 'Balance',
        ),
      ),
    );
  }
}

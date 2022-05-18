import 'package:first_design/widgets/card_table.dart';
import 'package:first_design/widgets/page_title.dart';
import 'package:first_design/widgets/custom_botton_navigation.dart';
import 'package:flutter/material.dart';
import '../widgets/background.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            //Background
            Background(),

            //Body de la pantalla.
            _HomeBody()
          ],
        ),
        bottomNavigationBar: CustomBottonNavigation());
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titles
          PageTitle(),

          //Card Table
          CardTable()
        ],
      ),
    );
  }
}

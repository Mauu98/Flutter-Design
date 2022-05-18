import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      //Tiene colección de Rows entre ellos..
      children: [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.redAccent,
              icon: Icons.card_giftcard_outlined,
              text: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.purple,
              icon: Icons.movie_filter_outlined,
              text: 'Entertainment'),
          _SingleCard(
              color: Colors.greenAccent, icon: Icons.shop, text: 'Shopping')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.yellowAccent,
              icon: Icons.design_services_outlined,
              text: 'Services'),
          _SingleCard(
              color: Colors.deepPurpleAccent,
              icon: Icons.sports,
              text: 'Sports')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.apps_outage,
              text: 'Apps'),
          _SingleCard(
              color: Colors.tealAccent,
              icon: Icons.running_with_errors,
              text: 'Running')
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(this.icon, size: 35, color: Colors.white),
          radius: 30,
        ),
        SizedBox(height: 10),
        Text(this.text, style: TextStyle(color: this.color, fontSize: 18))
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        //En este caso, evita que se difuminen todos los widgets con el BackDrop.
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          //Consume mas memoria de lo normal
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}

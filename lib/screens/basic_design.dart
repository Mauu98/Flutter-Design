import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image(image: AssetImage('assets/images/landscape_image.jpg')),

        //Titulo - Parte superior
        Title(),

        //Boton Section
        ButtonSection(),

        //Description
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              'Irure qui occaecat irure dolor pariatur sint ad nulla est enim fugiat occaecat. Deserunt Lorem ad irure esse consequat aliquip enim ea quis. Nulla reprehenderit cupidatat duis cupidatat qui deserunt aliquip eiusmod. Enim eiusmod ullamco aliqua ad deserunt do velit esse sunt in. Et aliquip ea velit labore sunt in sint culpa sint ipsum duis quis.'),
        )
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'kanderstag, Switzerland',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(text: 'Call', icon: Icons.call),
          CustomButton(text: 'Route', icon: Icons.map_outlined),
          CustomButton(text: 'Share', icon: Icons.share)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(text, style: TextStyle(color: Colors.blue))
      ],
    );
  }
}

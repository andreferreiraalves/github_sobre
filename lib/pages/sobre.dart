import 'package:flutter/material.dart';

import '../settings.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  bool modoEscuro = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Modo Escuro",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Switch(
              value: modoEscuro,
              onChanged: (bool selected) {
                if (selected)
                  Settings.theme = 'light';
                else
                  Settings.theme = 'dark';

                setState(() {
                  modoEscuro = selected;

                  if (selected)
                    Settings.theme = 'light';
                  else
                    Settings.theme = 'dark';
                });
              },
            )
          ],
        ),
        SizedBox(height: 20),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text("github.com/andreferreiraalves"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: const Text("GO"),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

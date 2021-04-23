import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemLista extends StatelessWidget {
  final String titulo;
  final DateTime data;
  final String nomeFull;

  final df = DateFormat("dd/MM/yyyy");

  ItemLista(
      {@required this.titulo, @required this.data, @required this.nomeFull});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                this.titulo,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                df.format(this.data),
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            this.nomeFull,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final object;
  final Function callBack;

  Loader({@required this.object, @required this.callBack});

  @override
  Widget build(BuildContext context) {
    if (object == null)
      return Center(
        child: CircularProgressIndicator(),
      );

    if (object.length == 0)
      return Center(
        child: Text("Nenhum item encontrado"),
      );

    return callBack(context);
  }
}

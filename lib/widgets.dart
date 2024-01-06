
import 'package:flutter/material.dart';


Widget buildRow(String text, IconData icon) {
    return Row(
      children: [
        CircleAvatar(),
        SizedBox(width: 8),
        Text(text),
        SizedBox(width: 8),
        Icon(icon),
      ],
    );
  }


Widget buildListTile(String title, String subtitle) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
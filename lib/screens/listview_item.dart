import 'package:flutter/material.dart';

class ListviewItems extends StatefulWidget {
  const ListviewItems({Key? key}) : super(key: key);

  @override
  State<ListviewItems> createState() => _ListviewItemsState();
}

class _ListviewItemsState extends State<ListviewItems> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext ctx, int idx) {
            return Text('Content Number $idx');
          });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:swiper/utils/logger.dart';

// ignore: constant_identifier_names
const TAG = "ListView";

class FillTile extends StatelessWidget {
  const FillTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Log.i(TAG, "Item Tapped"),
      child: Row(children: <Widget>[
        const Icon(
          SFSymbols.drop_fill,
          color: Color(0xffffbf00),
        ).padding(left: 10),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Text('Item', style: TextStyle(fontWeight: FontWeight.w500)),
        )
      ]),
    );
  }
}

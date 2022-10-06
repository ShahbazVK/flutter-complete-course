import 'package:catalog/widgets/home_Widgets/addToCart.dart';
import 'package:catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class homeDetailPage extends StatelessWidget {
  final Item catalog;
  const homeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.m8,
          children: [
            "\$${catalog.price}".text.bold.xl.red800.make(),
            // ignore: deprecated_member_use
            AddToCart(catalog: catalog)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(
                catalog.image,
                height: 300,
              ),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.lg
                          .color(context.accentColor)
                          .bold
                          .xl4
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .lg
                          .xl
                          .color(MyTheme.darkBluishColor)
                          .make(),
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam . "
                          .text
                          .textStyle(context.captionStyle)
                          .lg
                          .xl
                          .color(MyTheme.darkBluishColor)
                          .make()
                          .px12(),
                    ],
                  ).py32(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

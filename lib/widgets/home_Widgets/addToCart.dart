import 'package:catalog/core/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';
import '../themes.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    // final CatalogModel _catalog = (VxState.store as MyStore).catalog;

    bool isInCart = _cart.items.contains(catalog) ? true : false;

    return ElevatedButton(
      onPressed: () {
        // isInCart = isInCart.toggle();
        // final _catalog = CatalogModel();
        // _cart.catalog = _catalog;
        AddMutation(catalog);
        // _cart.add(catalog);
        // setState(() {});
      },
      child: isInCart ? Icon(Icons.done) : "Buy".text.make(),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor)),
    );
  }
}

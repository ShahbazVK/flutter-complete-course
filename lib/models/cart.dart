import 'package:catalog/core/store.dart';
import 'package:catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // static final cartModel = CartModel._internal();
  // CartModel._internal();
  // factory CartModel() => cartModel;

  late CatalogModel _catalog;
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  List<Set<Item>> get items =>
      _itemIds.map((id) => catalog.getById(id)).toList();
  num get totalPrice => items.fold(0, (total, current) => total + 5);
  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }

  // void remove(Item item) {
  //   _itemIds.remove(item.id);
  // }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}

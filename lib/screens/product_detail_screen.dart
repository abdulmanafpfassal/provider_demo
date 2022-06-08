import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String; // is the id!
    final loadedItems = Provider.of<Products>(context, listen: false).item.firstWhere((element) => element.id == productId);
    return Scaffold(
      appBar: AppBar(
        title:  Text(loadedItems.title),
      ),
    );
  }
}

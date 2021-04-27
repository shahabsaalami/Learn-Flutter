import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Shopping list',
      home: ShoppingList(<Product>[
        Product(name: 'Potato'),
        Product(name: 'Potato'),
        Product(name: 'Potato'),
        Product(name: 'Potato'),
        Product(name: 'Apple'),
        Product(name: 'iOS'),
        Product(name: 'Potato'),
        Product(name: 'Potato'),
        Product(name: 'Ege'),
      ]),
    );
  }
}

class Product {
  final String name;

  Product({this.name});
}

class ShoppingList extends StatefulWidget {
  final List<Product> products;

  ShoppingList(this.products);

  @override
  State<StatefulWidget> createState() {
    return ShoppingListState();
  }
}

class ShoppingListState extends State<ShoppingList> {
  Set<Product> shoppingCart = Set<Product>();

  void handleCartChanged(Product product, bool inCard) {
    setState(() {
      if (inCard) {
        shoppingCart.remove(product);
      } else {
        shoppingCart.add(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return ShoppingListItem(
            product: product,
            inCart: shoppingCart.contains(product),
            onCardChanged: handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final onCardChanged;
  final bool inCart;

  ShoppingListItem({this.product, this.onCardChanged, this.inCart});

  Color getColor(BuildContext context) {
    return inCart ? Colors.black54 : Colors.amber;
  }

  TextStyle getTextStyle(BuildContext context) {
    if (inCart) {
      return TextStyle(
          color: Colors.black54, decoration: TextDecoration.lineThrough);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCardChanged(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: getTextStyle(context),
      ),
    );
  }
}
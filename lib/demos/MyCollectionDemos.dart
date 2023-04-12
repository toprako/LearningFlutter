import 'package:flutter/material.dart';

class MyCollectionDemosWidget extends StatefulWidget {
  const MyCollectionDemosWidget({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemosWidget> createState() =>
      _MyCollectionDemosWidgetState();
}

class _MyCollectionDemosWidgetState extends State<MyCollectionDemosWidget> {
  late List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'assets/png/product.png',
          title: 'Abstrack Art',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/png/product.png',
          title: 'Abstrack Art2',
          price: 10.5),
      CollectionModel(
          imagePath: 'assets/png/product.png',
          title: 'Abstrack Art3',
          price: 25.4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 60),
        child: ListView.builder(
            itemCount: _items.length,
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              return _CategoryCard(model: _items[index]);
            }),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(child: Image.asset(_model.imagePath,fit: BoxFit.fill,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} \$'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

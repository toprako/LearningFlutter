
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learning/service/model/PostModel.dart';

class ServiceLearning extends StatefulWidget {
  const ServiceLearning({Key? key}) : super(key: key);

  @override
  State<ServiceLearning> createState() => _ServiceLearningState();
}

class _ServiceLearningState extends State<ServiceLearning> {
  List<PostModel>? _items;
  String post = "posts";
  String basepath = "https://jsonplaceholder.typicode.com/";
  bool _isLoading = false;
  late final Dio _networkManager;
  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: basepath));
    print("Başlangıç");
    fetchPostItems();
  }

  void _changeLoading(){
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async{
    _changeLoading();
    final response = await _networkManager.get(post);

    if(response.statusMessage == "OK"){
      final _datas = response.data;
      print(response.statusMessage);
      if(_datas is List){
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : SizedBox.shrink()],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
         return _PostCard(model: _items?[index],);
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  }):_model = model,super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}

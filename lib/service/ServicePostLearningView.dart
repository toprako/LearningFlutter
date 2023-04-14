import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learning/service/model/PostModel.dart';

class ServicePostLearning extends StatefulWidget {
  const ServicePostLearning({Key? key}) : super(key: key);

  @override
  State<ServicePostLearning> createState() => _ServicePostLearningState();
}

class _ServicePostLearningState extends State<ServicePostLearning> {
  bool _isLoading = false;
  String post = "posts";
  String basepath = "https://jsonplaceholder.typicode.com/";
  String? name = "";
  late final Dio _networkManager;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: basepath));
    print("Başlangıç");
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _networkManager.post(post,data: postModel);
    if(response.statusCode == HttpStatus.created){
      name = "Başarılı";
    }
    _changeLoading();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name!),
        actions: [
          _isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: "Title"),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _bodyController,
            decoration: InputDecoration(labelText: "Body"),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _userIdController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "UserId"),
            autofillHints: [AutofillHints.creditCardNumber],
          ),
          TextButton(
              onPressed: () {
                if (_titleController.text.isNotEmpty &&
                    _bodyController.text.isNotEmpty &&
                    _userIdController.text.isNotEmpty) {
                  final model = PostModel(
                      body: _bodyController.text,
                      title: _titleController.text,
                      userId: int.tryParse(_userIdController.text));
                  _addItemToService(model);
                }
              },
              child: Text("Kaydet")),
        ],
      ),
    );
  }
}

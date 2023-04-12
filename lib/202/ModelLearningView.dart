import 'package:flutter/material.dart';
import 'package:learning/202/ModelLearning.dart';

class ModelLearningView extends StatefulWidget {
  const ModelLearningView({Key? key}) : super(key: key);

  @override
  State<ModelLearningView> createState() => _ModelLearningViewState();
}

class _ModelLearningViewState extends State<ModelLearningView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    final user1 = PostModel2();
    user1.body = "Hello";

    final user2 = PostModel(1, 2, "Title", "Body");

    final user3 = PostModel3(1, 2, "Title2", "Body2");
    user3.body = "Merhaba";

    final user4 = PostModel4(userId: 1, id: 2, title: "Title3", body: "Body3");

    final user5 = PostModel5(userId: 1, id: 2, title: "Title4", body: "Body5");
    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

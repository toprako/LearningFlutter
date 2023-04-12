import 'package:flutter/material.dart';

class TabLearningWidget extends StatefulWidget {
  const TabLearningWidget({Key? key}) : super(key: key);

  @override
  State<TabLearningWidget> createState() => _TabLearningWidgetState();
}

class _TabLearningWidgetState extends State<TabLearningWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){
          _tabController.animateTo(0);
        }),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: _myTabView(tabController: _tabController),
        ),
        appBar: AppBar(
          /*bottom:  TabBar(
            controller: _tabController,
            tabs:  [
              Tab(
                text: "Page 1",
              ),
              Tab(
                text: "Page 2",
              ),
            ],
          ),*/
        ),
        body: _tabbarView(tabController: _tabController),
      ),
    );
  }
}

class _myTabView extends StatelessWidget {
  const _myTabView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.blueGrey,
     //isScrollable: true,
      unselectedLabelColor: Colors.blueGrey,
      padding: EdgeInsets.zero,
      onTap: (int index){

      },
      controller: _tabController,
      tabs:_MyTabViews.values.map((e) => Tab(text: e.name.toUpperCase())).toList(),
    );
  }
}

class _tabbarView extends StatelessWidget {
  const _tabbarView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blueGrey),
        Container(color: Colors.brown),
      ],
    );
  }
}

enum _MyTabViews{
  home,
  settings,
  favorite,
  profile
}

extension _MyTabViewExtension on _MyTabViews{


}
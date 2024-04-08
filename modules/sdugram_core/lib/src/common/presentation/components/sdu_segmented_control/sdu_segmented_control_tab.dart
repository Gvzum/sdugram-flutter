import 'package:flutter/material.dart';
import 'package:sdugram_core/presentation.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SduSegmentedControlTab extends StatefulWidget {
  final List<TabOption> options;
  const SduSegmentedControlTab({
    required this.options,
    super.key,
  });

  @override
  State<SduSegmentedControlTab> createState() => _SduSegmentedControlTabState();
}

class _SduSegmentedControlTabState extends State<SduSegmentedControlTab>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: widget.options.length,
      vsync: this,
    )..addListener(() {
        setState(() {
          _currentIndex = _tabController!.index;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.options.length,
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        extendBody: true,
        // backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: MultiSliver(
                  children: [
                    SliverToBoxAdapter(
                      child: SduSegmentedControl(
                        currentIndex: _currentIndex,
                        onChanged: (index) {
                          _tabController?.animateTo(index);
                        },
                        options: widget.options.map((e) => e.title).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            body: TabBarView(
              controller: _tabController,
              children: widget.options.map((e) => e.view).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gangganggang/src/favorite_view.dart';
import 'package:gangganggang/src/grow_view.dart';
import 'package:gangganggang/src/showcase_timeline_tile.dart';

enum TabItem { home, favorite, grow }

const Map<TabItem, int> tabIdx = {
  TabItem.favorite: 0,
  TabItem.home: 1,
  TabItem.grow: 2,
};

Map<TabItem, Widget> tabScreen = {
  TabItem.favorite: ShowcaseTimelineTile(),
  TabItem.home: FavoriteView(),
  TabItem.grow: GrowView(),
};

import 'package:abyow_chat/pages/get_started_page.dart';
import 'package:abyow_chat/pages/room_chat.dart';
import 'package:flutter/material.dart';

var routesPage = <String, WidgetBuilder>{
  '/' : (context) => GetStartedPage(),
  '/room-chat' : (context) => RoomChat(),
};

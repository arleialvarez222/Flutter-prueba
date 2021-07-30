
import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/lisview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
      '/'  : (BuildContext context) => HomePages(),
      'alert'  : (BuildContext context) => AlertPage(),
      'avatar'  : (BuildContext context) => AvatartPage(),
      'card'  : (BuildContext context) => CardPage(),
      'anmatedContainer'  : (BuildContext context) => AnimatedContainerPage(),
      'inputs'  : (BuildContext context) => InputPage(),
      'slider'  : (BuildContext context) => SliderPage(),
      'list'  : (BuildContext context) => ListaPage(),
  };
}
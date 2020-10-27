import 'dart:async';
import 'package:recipes/bloc/bloc.dart';

class LikeViewBloc extends Bloc {
  final StreamController<bool> _viewerController = StreamController<bool>();
  Stream<bool> get colorViewStream => _viewerController.stream;
  
  void selectView(bool changeView) {
    _viewerController.sink.add(changeView);
  }

  @override
  void dispose() {
    _viewerController.close();
  }
}
import 'dart:async';
import 'package:recipes/bloc/bloc.dart';

class RecipesViewBloc extends Bloc {
  final _viewerController = StreamController<String>();
  Stream<String> get recipesViewStream => _viewerController.stream;
  
  void selectView(String changeView) {
    _viewerController.sink.add(changeView);
  }

  @override
  void dispose() {
    _viewerController.close();
  }
}


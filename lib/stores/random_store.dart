import 'dart:async';
import 'dart:math';

import 'package:mobx/mobx.dart';

///run: flutter packages pub run build_runner watch
part 'random_store.g.dart';

class RandomStore = _RandomStore with _$RandomStore;

abstract class _RandomStore with Store {
  late final Timer _timer;
  final _random = Random();
  late final StreamController<int> _streamController;
  late final ObservableStream<int?> randomStream;

  _RandomStore() {
    _streamController = StreamController<int>();

    _timer = Timer.periodic(const Duration(seconds: 1),
        (_) => _streamController.add(_random.nextInt(100)));

    randomStream = ObservableStream(_streamController.stream);
  }

  void dispose() async {
    _timer.cancel();
    await _streamController.close();
  }
}

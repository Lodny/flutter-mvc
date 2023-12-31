import 'package:mvc_pattern/mvc_pattern.dart';
import '../mode/mode.dart';

class MVCController extends ControllerMVC {
  static MVCController? _this;
  final CounterModel _model;

  factory MVCController([StateMVC? state]) => _this ??= MVCController._(state);

  // MVCController._(super.state):_model = CounterModel();

  MVCController._(StateMVC? state):
        _model = CounterModel(),
        super(state);

  void update() => setState(() {});

  void inc() {
    print('MVCController.inc');
    _model.inc();
    update();
  }

  void dec() {
    print('MVCController.dec');
    _model.dec();
    update();
  }

  int get count => _model.count;
}

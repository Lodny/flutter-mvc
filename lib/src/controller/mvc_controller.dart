import 'package:mvc_pattern/mvc_pattern.dart';
import '../mode/mode.dart';

class MVCController extends ControllerMVC {
  static MVCController? _this;
  final CounterModel model;

  factory MVCController([StateMVC? state]) => _this ??= MVCController._(state);

  // MVCController._(super.state):_model = CounterModel();

  MVCController._(StateMVC? state):
        model = CounterModel(),
        super(state);

  void update() => setState(() {});

  void inc() {
    print('MVCController.inc');
    model.inc();
    update();
  }

  void dec() {
    print('MVCController.dec');
    model.dec();
    update();
  }
}

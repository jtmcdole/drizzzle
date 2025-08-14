import 'dart:async';

typedef Debounceable<S, T> = Future<S?> Function(T parameter);

// convert a normal function to debounceable version of
// function
Debounceable<S, T> debounce<S, T>(Debounceable<S?, T> function) {
  DebounceTimer? debounceTimer;

  return (T parameter) async{
    if(debounceTimer!=null && !debounceTimer!.isCompleted){
      debounceTimer!.cancel();
    }
    debounceTimer = DebounceTimer();
    try{
      await debounceTimer!.future;
    }on CancelException{
      return null;
    }
    return function(parameter);
  };
}

class DebounceTimer {
  DebounceTimer() {
    _timer = Timer(const Duration(microseconds: 500), _onComplete);
  }

  late final Timer _timer;
  final Completer<void> _completer = Completer<void>();

  void _onComplete() {
    _completer.complete();
  }

  Future<void> get future => _completer.future;
  bool get isCompleted => _completer.isCompleted;

  void cancel() {
    _timer.cancel();
    _completer.completeError(const CancelException());
  }
}

class CancelException implements Exception {
  const CancelException();
}

import './board.dart';

class MemoryGame {
  MemoryGame(this.stage) : board = new MemoryGameBoard(stage) {
    state = MemoryGameState.beforeStart;
    board.render();
  }

  final String stage;
  MemoryGameBoard board;
  MemoryGameState _state;

  get state => _state;
  set state(MemoryGameState val) {
    _state = val;
    board.state = _state;
  }

  void start() {
    state = MemoryGameState.started;
    board.render();
  }

  void reset() {
    board = new MemoryGameBoard(stage);
    state = MemoryGameState.beforeStart;
    board.render();
  }
}

enum MemoryGameState { beforeStart, started, ended }

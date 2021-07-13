

class LogLevel implements Comparable<LogLevel> {

  static const debug = LogLevel(1, '[debug]');
  static const info = LogLevel(2, '[info]');
  static const warn = LogLevel(3, '[warn]');
  static const error = LogLevel(4, '[error]');
  static const fatal = LogLevel(5, '[fatal]');

  final int value;
  final String name;

  const LogLevel(this.value, this.name);

  bool operator <(LogLevel other) => value < other.value;

  @override
  int compareTo(LogLevel other) => value - other.value;

}
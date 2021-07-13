
import 'log_level.dart';
import 'log_utils.dart';

class LogMessage {
  final LogLevel level;  //日志等级
  final String message;  //日志信息
  final String? tag;      //日志标识
  final bool isJson;
  final bool hasLine;

  const LogMessage(this.level, this.message, this.tag, this.isJson, this.hasLine);

  @override
  String toString() {
    if(isJson) {
      return jsonFormat(message);
    }else {
      return message;
    }
  }
}

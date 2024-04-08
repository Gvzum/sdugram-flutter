import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

@singleton
class CoreLogger {
  final Talker _talker;

  CoreLogger(this._talker);

  /// Log a new critical message
  /// [dynamic] [message] - message describes what happened
  /// [Object?] [exception] - exception if it happened
  /// [StackTrace?] [stackTrace] - stackTrace if [exception] happened
  ///
  /// ```dart
  ///   talker.critical('Log critical');
  /// ```
  void critical(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.critical(msg, exception, stackTrace);
  }

  /// Log a new debug message
  /// [dynamic] [message] - message describes what happened
  /// [Object?] [exception] - exception if it happened
  /// [StackTrace?] [stackTrace] - stackTrace if [exception] happened
  ///
  /// ```dart
  ///   talker.debug('Log debug');
  /// ```
  void debug(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.debug(msg, exception, stackTrace);
  }

  /// Log a new error message
  /// [dynamic] [message] - message describes what happened
  /// [Object?] [exception] - exception if it happened
  /// [StackTrace?] [stackTrace] - stackTrace if [exception] happened
  ///
  /// ```dart
  ///   talker.error('Log error');
  /// ```
  void error(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.error(msg, exception, stackTrace);
  }

  /// Log a new info message
  /// [dynamic] [message] - message describes what happened
  /// [Object?] [exception] - exception if it happened
  /// [StackTrace?] [stackTrace] - stackTrace if [exception] happened
  ///
  /// ```dart
  ///   talker.info('Log info');
  /// ```
  void info(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.info(msg, exception, stackTrace);
  }

  /// Log a new verbose message
  /// [dynamic] [message] - message describes what happened
  /// [Object?] [exception] - exception if it happened
  /// [StackTrace?] [stackTrace] - stackTrace if [exception] happened
  ///
  /// ```dart
  ///   talker.verbose('Log verbose');
  /// ```
  void verbose(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.verbose(msg, exception, stackTrace);
  }

  /// Log a new warning message
  /// [dynamic] [message] - message describes what happened
  /// [Object?] [exception] - exception if it happened
  /// [StackTrace?] [stackTrace] - stackTrace if [exception] happened
  ///
  /// ```dart
  ///   talker.warning('Log warning');
  /// ```
  void warning(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talker.warning(msg, exception, stackTrace);
  }

  void handle(
    Object exception, [
    StackTrace? stackTrace,
    dynamic msg,
  ]) {
    _talker.handle(exception, stackTrace, msg);
  }
}

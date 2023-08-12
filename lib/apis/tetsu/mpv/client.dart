import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'message.dart';

class MpvClient with ChangeNotifier {
  final WebSocketChannel _channel;
  late final StreamController<MpvResponse> _responseController;
  late final StreamController<MpvEvent> _eventController;

  Completer<void> _readyCompleter = Completer();
  Future<void> get waitForRunning => _readyCompleter.future;

  bool _isRunning = false;
  bool get isRunning => _isRunning;
  set isRunning(bool value) {
    final notify = value != isRunning;
    _isRunning = value;
    if (notify) notifyListeners();

    if (value) {
      _readyCompleter.complete();
    } else {
      _readyCompleter = Completer();
    }
  }

  MpvClient(this._channel) {
    _initialize();
  }

  void _initialize() {
    _responseController = StreamController<MpvResponse>.broadcast();
    _eventController = StreamController<MpvEvent>.broadcast();

    _channel.stream.map((event) {
      print(event);
      return WsMpvMessage.fromJson(json.decode(event));
    }).listen(
      (message) {
        message.when(
          control: (msg) {
            msg.maybeWhen(
              started: () => isRunning = true,
              stopped: () => isRunning = false,
              orElse: () {},
            );
          },
          mpv: (msg) {
            if (msg.containsKey("event")) {
              _eventController.add(MpvEvent.fromJson(msg));
            } else {
              _responseController.add(MpvResponse.fromJson(msg));
            }
          },
        );
      },
      onError: (error, stack) {
        print('WebSocket error: $error\n$stack');
      },
    );
  }

  Stream<MpvResponse> get messages => _responseController.stream;

  void sendControl(ControlMessage message) {
    final b = jsonEncode(
      WsMpvMessage.control(message).toJson(),
    );
    print(b);
    _channel.sink.add(b);
  }

  void send(MpvRequest message) {
    final b = jsonEncode(
      WsMpvMessage.mpv(message.toJson()).toJson(),
    );
    print(b);
    _channel.sink.add(b);
  }

  void disconnect() {
    _channel.sink.close();
    _responseController.close();
  }
}

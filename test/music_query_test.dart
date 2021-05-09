import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:music_query/music_query.dart';

void main() {
  const MethodChannel channel = MethodChannel('music_query');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MusicQuery.platformVersion, '42');
  });
}

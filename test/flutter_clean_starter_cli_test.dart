import 'dart:io';
import 'package:flutter_clean_starter_cli/src/scaffold_generator.dart';
import 'package:test/test.dart';

void main() {
  group('ScaffoldGenerator Tests', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('cli_test_');
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('should generate clean architecture folder structure and files', () async {
      final generator = ScaffoldGenerator(
        projectName: 'sample_app',
        targetPath: tempDir.path,
      );

      final filesCreated = await generator.generate();
      expect(filesCreated, greaterThan(0));

      final mainFile = File('${tempDir.path}/sample_app/lib/main.dart');
      final routerFile = File('${tempDir.path}/sample_app/lib/core/router/app_router.dart');
      final pubspecFile = File('${tempDir.path}/sample_app/pubspec.yaml');

      expect(await mainFile.exists(), isTrue);
      expect(await routerFile.exists(), isTrue);
      expect(await pubspecFile.exists(), isTrue);

      final mainContent = await mainFile.readAsString();
      expect(mainContent, contains('sample_app'));
    });
  });
}

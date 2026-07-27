import 'dart:io';
import 'package:args/args.dart';
import 'package:flutter_clean_starter_cli/src/scaffold_generator.dart';

void main(List<String> arguments) async {
  final ArgParser parser = ArgParser()
    ..addOption('name', abbr: 'n', help: 'Project name to generate')
    ..addOption('output', abbr: 'o', help: 'Output directory path', defaultsTo: '.')
    ..addFlag('help', abbr: 'h', negatable: false, help: 'Print usage information');

  try {
    final ArgResults results = parser.parse(arguments);

    if (results['help'] == true || results.arguments.isEmpty) {
      print('🚀 Flutter Clean Architecture Project Generator CLI\n');
      print('Usage: flutter_clean_cli create --name <project_name> [options]\n');
      print(parser.usage);
      exit(0);
    }

    final String? name = results['name'] as String?;
    if (name == null || name.trim().isEmpty) {
      print('❌ Error: Please provide a project name using --name <my_app>');
      exit(1);
    }

    final String output = results['output'] as String;

    print('📦 Generating Clean Architecture Flutter project "$name"...');
    final generator = ScaffoldGenerator(
      projectName: name,
      targetPath: output,
    );

    final count = await generator.generate();
    print('✨ Successfully generated $count project scaffolding files in "$output/$name"!');
    print('\nNext steps:');
    print('  cd $name');
    print('  flutter pub get');
    print('  flutter run');
  } catch (e) {
    print('❌ Execution failed: $e');
    exit(1);
  }
}

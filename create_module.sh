#!/bin/bash

# Script to create a new Flutter module with clean architecture structure.

# Check if module name is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <module_name>"
  exit 1
fi

MODULE_NAME_SNAKE=$1
MODULE_NAME_CAMEL=$(echo "$MODULE_NAME_SNAKE" | awk 'BEGIN{FS=OFS="_"} {for(i=1;i<=NF;i++)$i=toupper(substr($i,1,1)) tolower(substr($i,2));}1')

# Create the module using Flutter with the bcc_ prefix
flutter create --template=package "modules/sdugram_$MODULE_NAME_SNAKE"

# Remove default test file
rm modules/sdugram_"$MODULE_NAME_SNAKE"/test/sdugram_"${MODULE_NAME_SNAKE}"_test.dart

# Navigate to module directory
cd "modules/sdugram_$MODULE_NAME_SNAKE" || exit

# Add dependencies using dart pub add
dart pub add auto_route
dart pub add injectable
dart pub add dio
dart pub add retrofit
dart pub add flutter_bloc

dart pub add --dev build_runner
dart pub add --dev auto_route_generator
dart pub add --dev freezed
dart pub add --dev retrofit_generator
dart pub add --dev json_serializable
dart pub add --dev injectable_generator

# Remove homepage from pubspec.yaml
sed -i.bak '/^homepage:/d' pubspec.yaml && rm pubspec.yaml.bak

# Add "publish_to: none" to pubspec.yaml
sed -i.bak '/^environment:/i \
publish_to: none\
' pubspec.yaml && rm pubspec.yaml.bak

# Add local and git dependencies before dev_dependencies
sed -i.bak '/dev_dependencies:/i \
  sdugram_core:\
    path: ../sdugram_core\
' pubspec.yaml && rm pubspec.yaml.bak

# Create clean architecture directories inside src
mkdir -p lib/src/common/data/services
mkdir -p lib/src/common/data/sources
mkdir -p lib/src/common/data/dtos
mkdir -p lib/src/common/data/mappers
mkdir -p lib/src/common/domain/behaviors
mkdir -p lib/src/common/domain/models
mkdir -p lib/src/common/domain/use_cases
mkdir -p lib/src/common/presentation/blocs
mkdir -p lib/src/common/presentation/screens
mkdir -p lib/src/common/presentation/widgets
mkdir -p lib/src/common/config
mkdir -p lib/src/features

# Create injectable_config.dart
cat <<EOT >>lib/src/common/config/injectable_config.dart
import 'package:injectable/injectable.dart';

@InjectableInit.microPackage()
void initMicroPackage() {}
EOT

# Create module specific route config
cat <<EOT >>lib/src/common/config/${MODULE_NAME_SNAKE}_route_module.dart
import 'package:auto_route/auto_route.dart';
import 'package:${MODULE_NAME_SNAKE}/screens.dart';

part '${MODULE_NAME_SNAKE}_route_module.gm.dart';

@AutoRouterConfig.module()
class ${MODULE_NAME_CAMEL}RouteModule extends _\$${MODULE_NAME_CAMEL}RouteModule {}
EOT

# Create empty screens export
cat <<EOT >> lib/screens.dart
// GENERATED CODE - DO NOT MODIFY BY HAND

library screens;
EOT

# Copy analysis_options.yaml from the initial directory to the module directory
cp ../../analysis_options.yaml ./

# Create index_generator.yaml at the root
cat <<EOT >>index_generator.yaml
index_generator:
  exclude:
    - '**.g.dart'
    - '**.freezed.dart'
    - '**.gm.dart'
    - '**.gr.dart'
    - '**.module.dart'
    - '**/generated/**.dart'
  indexes:
    - path: lib
      include:
        - '**_screen.dart'
      name: screens
    - path: lib
      exclude:
        - '**_screen.dart'
      name: sdugram_${MODULE_NAME_SNAKE}
EOT

# Create build.yaml at the root
cat <<EOT >>build.yaml
targets:
  \$default:
    builders:
      json_serializable:
        options:
          explicit_to_json: true
          include_if_null: false
EOT

# Create build_index_task.sh
cat <<EOT >>build_index_task.sh
#!/bin/sh
dart pub global activate index_generator
dart pub global run index_generator
EOT

# Create build_watch_task.sh
cat <<EOT >>build_watch_task.sh
#!/bin/sh
dart run build_runner watch --delete-conflicting-outputs
EOT

# Make the scripts executable
chmod +x build_index_task.sh
chmod +x build_watch_task.sh

# Add .gitkeep to directories
touch lib/src/common/data/services/.gitkeep
touch lib/src/common/data/sources/.gitkeep
touch lib/src/common/data/dtos/.gitkeep
touch lib/src/common/data/mappers/.gitkeep
touch lib/src/common/domain/behaviors/.gitkeep
touch lib/src/common/domain/models/.gitkeep
touch lib/src/common/domain/use_cases/.gitkeep
touch lib/src/common/presentation/blocs/.gitkeep
touch lib/src/common/presentation/screens/.gitkeep
touch lib/src/common/presentation/widgets/.gitkeep
touch lib/src/features/.gitkeep

# Get Flutter packages
flutter pub get

# Execute build task script
dart run build_runner build --delete-conflicting-outputs

# Execute build index task script
./build_index_task.sh

cd "../.."
# Add created module to bcc_front_app before dev_dependencies
sed -i.bak "/dev_dependencies:/i \\
  sdugram_$MODULE_NAME_SNAKE:\\
    path: modules/sdugram_$MODULE_NAME_SNAKE\\
\\
" pubspec.yaml && rm pubspec.yaml.bak

# Get Flutter packages
flutter pub get

echo "Module sdugram_$MODULE_NAME_SNAKE created and initialized successfully!"

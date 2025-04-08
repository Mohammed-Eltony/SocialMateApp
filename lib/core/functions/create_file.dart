import 'dart:developer';
import 'dart:io';

void main() {

  String fileName = 'intro';

  // مسار المشروع الحالي
  final projectPath = "${Directory.current.path}/lib";

  // قائمة المجلدات التي سيتم إنشاؤها
  final directories = [
    '$projectPath/features/$fileName/models',
    '$projectPath/features/$fileName/presentation/view',
    '$projectPath/features/$fileName/presentation/widgets',
    '$projectPath/features/$fileName/presentation/manager',
  ];

  // حلقة لإنشاء كل المجلدات
  for (var dir in directories) {
    final directory = Directory(dir);

    // التحقق من وجود المجلد، وإن لم يكن موجودًا يتم إنشاؤه
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      log('Created: $dir ✔');
    } else {
      log('Directory already exists: $dir ');
    }
  }

  log('تم إنشاء المجلدات بنجاح ✔');
}

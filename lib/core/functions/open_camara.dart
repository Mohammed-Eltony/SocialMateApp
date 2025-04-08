import 'package:image_picker/image_picker.dart';

class OpenCameraAndvideo {
  static Future<String?> uploadImages() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    return pickedImage?.path;
  }

  static Future<String?> uploadImagesGallery() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    return pickedImage?.path;
  }

  static Future<String?> uploadVedio() async {
    final pickedVideo = await ImagePicker().pickVideo(
      source: ImageSource.camera,
    );
    return pickedVideo?.path;
  }
}

import 'package:appwrite/appwrite.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class AppwriteService {
  AppwriteService() {
    client
        .setEndpoint(
          'https://cloud.appwrite.io/v1',
        ) // Replace with your endpoint
        .setProject('68b5b41500341e3e565d');

    storage = Storage(client);
  }
  final Client client = Client();
  late final Storage storage;

  /// Pick an image, upload to Appwrite, and return its public URL
  Future<String?> filePickAndUpload() async {
    const bucketId = '68b96a190014c93c5330';

    final ImagePicker picker = ImagePicker();

    try {
      // Pick image from gallery (use ImageSource.camera for camera)
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image == null) return null; // User canceled

      // Upload to Appwrite
      final result = await storage.createFile(
        bucketId: bucketId,
        fileId: ID.unique(),
        file: InputFile.fromPath(path: image.path),
      );

      debugPrint('✅ Upload successful: ${result}');

      final fileId = result.$id;

      final res = await storage.updateFile(bucketId: bucketId, fileId: fileId);

      debugPrint('✅ File updated: ${res}');

      // Generate public URL
      final fileUrl =
          '${client.endPoint}/storage/buckets/$bucketId/files/$fileId/view?project=${client.config['project']}';

      return fileUrl;
    } catch (e) {
      print('❌ Upload failed: $e');
      return null;
    }
  }
}

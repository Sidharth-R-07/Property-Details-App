import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ShareService {
  Future<void> shareProperty({
    required String title,
    required String description,
    required String url,
    required String imageUrl,
  }) async {
    // Download image
    final response = await http.get(Uri.parse(imageUrl));
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/property.jpg');
    await file.writeAsBytes(response.bodyBytes);

    // Share text + image
    await Share.shareXFiles(
      [XFile(file.path)],
      text: '$title\n\n$description\n\n$url',
      subject: title,
    );
  }
}

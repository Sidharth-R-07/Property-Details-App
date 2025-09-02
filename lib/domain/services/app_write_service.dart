import 'package:appwrite/appwrite.dart';

class AppwriteService {
  AppwriteService() {
    client
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject('YOUR_PROJECT_ID')
        .setSelfSigned(status: true);

    storage = Storage(client);
  }
  final Client client = Client();
  late final Storage storage;
}

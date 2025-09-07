import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/constants/global.dart';
import 'package:property/core/utils/service/custom_toast.dart';
import 'package:property/domain/services/app_write_service.dart';

class CustomImagePicker extends StatefulWidget {
  const CustomImagePicker({required this.onImageSelected, super.key});

  /// Returns the uploaded image URL (null if failed/cancelled)
  // ignore: inference_failure_on_function_return_type
  final Function(String?) onImageSelected;

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  String? _selectedImage;
  bool _isUploading = false;

  /// Setup Appwrite
  final Client client = Client();
  late final Storage storage;

  Future<void> _pickAndUploadImage() async {
    try {
      setState(() {
        _isUploading = true;
      });
      final imageUrl = await getIt<AppwriteService>().filePickAndUpload();
      debugPrint('📤 Uploading image...');
      debugPrint(imageUrl.toString());
      widget.onImageSelected(imageUrl);
      setState(() {
        _isUploading = false;
        _selectedImage = imageUrl;
      });
    } catch (e) {
      debugPrint('❌ Image upload failed: $e');
      showToast('Image upload failed. Please try again.');
      widget.onImageSelected(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickAndUploadImage,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: _isUploading
            ? const Center(child: CupertinoActivityIndicator())
            : _selectedImage == null
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add_a_photo,
                      size: 40,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Tap to upload image',
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ],
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  _selectedImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
      ),
    );
  }
}

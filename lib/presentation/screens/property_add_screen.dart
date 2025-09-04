import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property/core/utils/service/custom_toast.dart';
import 'package:property/core/utils/widgets/custom_image_picker.dart';
import 'package:property/core/utils/widgets/custom_text_feild.dart';
import 'package:property/domain/models/property_model.dart';
import 'package:property/presentation/application/property/bloc/property_bloc.dart';

class PropertyAddScreen extends StatefulWidget {
  const PropertyAddScreen({super.key});

  @override
  State<PropertyAddScreen> createState() => _PropertyAddScreenState();
}

class _PropertyAddScreenState extends State<PropertyAddScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  String? imageUrl;

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    locationController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text('Add New Property', style: TextStyle(fontSize: 16)),
      ),
      body: BlocBuilder<PropertyBloc, PropertyState>(
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                CustomTextField(
                  controller: titleController,
                  label: 'Title',
                  hint: 'Enter property title',
                  isRequired: true,
                ),
                CustomTextField(
                  controller: descriptionController,
                  label: 'Description',
                  hint: 'Enter property description',

                  maxLines: 3,
                  isRequired: true,
                ),
                CustomTextField(
                  controller: locationController,
                  label: 'Location',
                  hint: 'Enter property location',
                  isRequired: true,
                ),
                CustomTextField(
                  controller: priceController,
                  label: 'Price',
                  hint: 'Enter property price',
                  keyboardType: TextInputType.number,
                  isRequired: true,
                ),
                CustomImagePicker(
                  onImageSelected: (file) {
                    imageUrl = file;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _submit,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: state.submitLoading
                      ? const CupertinoActivityIndicator()
                      : const Text('Save Property'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState?.validate() ?? false;
    final state = context.read<PropertyBloc>().state;

    if (!isValid || state.submitLoading) return;
    if (imageUrl == null) {
      showToast('Please select an image', backgroundColor: Colors.red);
      return;
    }

    context.read<PropertyBloc>().add(
      PropertyEvent.addNewProperty(
        PropertyModel(
          id: DateTime.now().toString(),
          title: titleController.text.trim(),
          description: descriptionController.text.trim(),
          location: locationController.text.trim(),
          price: double.parse(priceController.text.trim()),
          image: imageUrl!,
        ),
        () {
          titleController.clear();
          descriptionController.clear();
          locationController.clear();
          priceController.clear();
          imageUrl = null;
          showToast(
            'Property added successfully',
            backgroundColor: Colors.green,
          );
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

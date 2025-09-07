import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property/core/utils/service/bottom_sheet_loading.dart';
import 'package:property/core/utils/service/custom_toast.dart';
import 'package:property/core/utils/theme/app_theme.dart';
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
    return BlocListener<PropertyBloc, PropertyState>(
      listenWhen: (previous, current) =>
          previous.submitLoading != current.submitLoading,
      listener: (context, state) {
        if (state.submitLoading) {
          showLoadingBottomSheet(context);
        } else {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      },
      child: Scaffold(
        backgroundColor: context.appColors.background,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
          titleSpacing: 0,
          backgroundColor: context.appColors.primary,
          surfaceTintColor: context.appColors.primary,
          title: const Text(
            'Create New Property',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
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
                  const SizedBox(height: 6),
                  CustomImagePicker(
                    onImageSelected: (file) {
                      imageUrl = file;
                    },
                  ),
                ],
              ),
            );
          },
        ),
        bottomSheet: BottomSheet(
          backgroundColor: Colors.transparent,
          onClosing: () {},
          builder: (context) => Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            color: context.appColors.background,
            child: MaterialButton(
              color: context.appColors.primary,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: _submit,
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
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

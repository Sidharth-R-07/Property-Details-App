import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property/core/utils/service/bottom_sheet_loading.dart';
import 'package:property/core/utils/theme/app_theme.dart';
import 'package:property/presentation/application/property/bloc/property_bloc.dart';
import 'package:property/presentation/screens/property_add_screen.dart';
import 'package:property/presentation/widgets/property_card.dart';
import 'package:property/presentation/widgets/property_card_shimmer.dart';

class PropertyListScreen extends StatelessWidget {
  const PropertyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PropertyBloc>().add(const PropertyEvent.fetchAllProperties());

    return BlocListener<PropertyBloc, PropertyState>(
      listenWhen: (previous, current) =>
          previous.shareLoading != current.shareLoading,
      listener: (context, state) {
        if (state.shareLoading) {
          showLoadingBottomSheet(context);
        } else {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: context.appColors.primary,
          backgroundColor: context.appColors.primary,
          title: const Text(
            'Properties',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
            ),
          ),
        ),
        body: BlocBuilder<PropertyBloc, PropertyState>(
          builder: (context, state) {
            if (state.fetchLoading) {
              return ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => const PropertyCardShimmer(),
              );
            } else if (state.properties.isEmpty) {
              return const Center(
                child: Text('No properties found. Add some!'),
              );
            }
            return ListView.builder(
              itemCount: state.properties.length,
              itemBuilder: (context, index) =>
                  PropertyCard(property: state.properties[index]),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: context.appColors.primary,
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          onPressed: () {
            Navigator.of(context).push(
              // ignore: inference_failure_on_instance_creation
              MaterialPageRoute(builder: (_) => const PropertyAddScreen()),
            );
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}

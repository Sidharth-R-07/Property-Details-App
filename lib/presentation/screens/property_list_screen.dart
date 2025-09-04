import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property/presentation/application/property/bloc/property_bloc.dart';
import 'package:property/presentation/screens/property_add_screen.dart';
import 'package:property/presentation/widgets/property_card.dart';

class PropertyListScreen extends StatelessWidget {
  const PropertyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PropertyBloc>().add(const PropertyEvent.fetchAllProperties());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property List', style: TextStyle(fontSize: 16)),
      ),
      body: BlocBuilder<PropertyBloc, PropertyState>(
        builder: (context, state) {
          if (state.fetchLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.properties.isEmpty) {
            return const Center(child: Text('No properties found. Add some!'));
          }
          return ListView.builder(
            itemCount: state.properties.length,
            itemBuilder: (context, index) =>
                PropertyCard(property: state.properties[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(
            context,
            // ignore: inference_failure_on_instance_creation
          ).push(MaterialPageRoute(builder: (_) => const PropertyAddScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

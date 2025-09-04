import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property/domain/models/property_model.dart';
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
          debugPrint('Properties: ${state.properties.length}');
          if (state.fetchLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.properties.isEmpty) {
            return const Center(child: Text('No properties found. Add some!'));
          }
          return ListView.builder(
            itemCount: state.properties.length,
            itemBuilder: (context, index) {
              return PropertyCard(property: state.properties[index]);
            },
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

final List<PropertyModel> dummyProperties = [
  PropertyModel(
    image: 'https://picsum.photos/400/200?1',
    title: 'Luxury Villa',
    description: 'A beautiful villa with a sea view and modern design.',
    location: 'Goa, India',
    price: 250000,
  ),
  PropertyModel(
    image: 'https://picsum.photos/400/200?2',
    title: 'Modern Apartment',
    description: 'Spacious apartment with 3 bedrooms and balcony.',
    location: 'Bangalore, India',
    price: 95000,
  ),
  PropertyModel(
    image: 'https://picsum.photos/400/200?3',
    title: 'Cozy Cottage',
    description: 'A peaceful cottage surrounded by nature.',
    location: 'Manali, India',
    price: 120000,
  ),
  PropertyModel(
    image: 'https://picsum.photos/400/200?4',
    title: 'Penthouse Suite',
    description: 'Luxury penthouse with skyline view.',
    location: 'Mumbai, India',
    price: 450000,
  ),
  PropertyModel(
    image: 'https://picsum.photos/400/200?5',
    title: 'Beach House',
    description: 'Beautiful house located right on the beach.',
    location: 'Kochi, India',
    price: 300000,
  ),
];

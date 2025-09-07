import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PropertyCardShimmer extends StatelessWidget {
  const PropertyCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.all(6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(width: 2, color: Colors.green),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title row
                      Row(
                        children: [
                          Container(height: 18, width: 18, color: Colors.white),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Container(height: 16, color: Colors.white),
                          ),
                          const SizedBox(width: 30),
                        ],
                      ),
                      const SizedBox(height: 12),

                      // Location row
                      Row(
                        children: [
                          Container(height: 16, width: 16, color: Colors.white),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Container(height: 14, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Price row
                      Row(
                        children: [
                          Container(height: 16, width: 16, color: Colors.white),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Container(height: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Description row
                      Container(height: 12, color: Colors.white),
                      const SizedBox(height: 6),
                      Container(height: 12, width: 200, color: Colors.white),

                      const SizedBox(height: 8),

                      // Image placeholder (right side)
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

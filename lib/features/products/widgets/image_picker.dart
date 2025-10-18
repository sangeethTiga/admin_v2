import 'dart:convert';
import 'dart:io' show File;
import 'package:admin_v2/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:admin_v2/features/products/cubit/product_cubit.dart';
import 'package:admin_v2/features/report/domain/models/productimage/product_image_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class UploadConfirmationDialog extends StatelessWidget {
  final XFile imageFile;

  const UploadConfirmationDialog({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Confirm Image Upload'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('File: ${imageFile.name}'),
          const SizedBox(height: 12),
          Image.file(
            File(imageFile.path),
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async {
            Navigator.of(context).pop();
            _uploadImage(context, imageFile);
          },
          child: const Text('Upload'),
        ),
      ],
    );
  }

  void _uploadImage(BuildContext context, XFile imageFile) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final bytes = await imageFile.readAsBytes();
      final base64Image = base64Encode(bytes);
      final fileName = imageFile.name;

      final imageRequest = ProductImageListResponse(
        originalFilename: fileName,
        imageUrl: base64Image,
        resourceType: 1,
        storeId:
            context.read<DashboardCubit>().state.selectedStore?.storeId ?? 0,
        createdBy: 1,
      );

      final result = await context.read<ProductCubit>().uploadProductImage(
        imageRequest,
      );

      Navigator.of(context).pop(); 


    } catch (e) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error uploading image: $e')));
    }
  }
}

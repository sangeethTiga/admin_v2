// import 'package:flutter/material.dart';

// class ImagePicker extends StatefulWidget {
//   final Function(File) onImageSelected;
//   const ImagePicker({required this.onImageSelected,super.key});

//   @override
//   State<ImagePicker> createState() => _ImagePickerState();
// }

// class _ImagePickerState extends State<ImagePicker> {
//   File? _imageFile;
//   final ImagePicker _picker = ImagePicker();

//   Future<void> _pickImage(ImageSource source) async {
//         final pickedFile = await _picker.pickImage(source: source);
//            if (pickedFile != null) {
//       final file = File(pickedFile.path);
//       setState(() => _imageFile = file);
//       widget.onImageSelected(file);
//     }

//   }
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
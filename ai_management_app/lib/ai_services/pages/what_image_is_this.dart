import 'package:ai_management_app/generated/protos/basic_ai_infra.pb.dart';
import 'package:ai_management_app/grpc_client/ai_service_grpc_client.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WhatImageIsThisPage extends StatelessWidget {
  const WhatImageIsThisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What image is this?'),
      ),
      body: const Column(
        children: [
          _ImageClassifierSection(),
        ],
      ),
    );
  }
}

enum ImageClassifierState {
  imageEmpty,
  imageLoaded,
  imageSubmited,
}

class _ImageClassifierSection extends StatefulWidget {
  const _ImageClassifierSection();

  @override
  State<_ImageClassifierSection> createState() =>
      _ImageClassifierSectionState();
}

class _ImageClassifierSectionState extends State<_ImageClassifierSection> {
  Uint8List? imageFile;
  bool userSubmitedImage = false;

  @override
  Widget build(BuildContext context) {
    final currentState = userSubmitedImage
        ? ImageClassifierState.imageSubmited
        : imageFile != null
            ? ImageClassifierState.imageLoaded
            : ImageClassifierState.imageEmpty;
    switch (currentState) {
      case ImageClassifierState.imageEmpty:
        return _buildImageUploadButton();
      case ImageClassifierState.imageLoaded:
        return _buildImagePreview();
      case ImageClassifierState.imageSubmited:
        return _buildInferingResult();
    }
  }

  Widget _buildImageUploadButton() {
    return TextButton(
      onPressed: () async {
        final result = await FilePicker.platform.pickFiles();
        if (result == null) {
          return;
        }
        setState(() {
          imageFile = result.files.single.bytes!;
        });
      },
      child: const Text("Upload image"),
    );
  }

  Widget _buildImagePreview() {
    return Column(
      children: [
        Image.memory(imageFile!),
        TextButton(
          onPressed: () {
            setState(() {
              userSubmitedImage = true;
            });
          },
          child: const Text('Submit image'),
        ),
      ],
    );
  }

  Widget _buildInferingResult() {
    return Column(
      children: [
        Image.memory(imageFile!),
        StreamBuilder<InferingResult>(
          stream: AiServiceGrpcClient()
              .whatImageIsThis(Base64Image()..data = imageFile!),
          builder: (context, snapshot) {
            return Text(snapshot.data?.result ?? 'Waiting for response...');
          },
        ),
        TextButton(
          onPressed: () => setState(() {
            userSubmitedImage = false;
            imageFile = null;
          }),
          child: const Text('Submit another image'),
        ),
      ],
    );
  }
}

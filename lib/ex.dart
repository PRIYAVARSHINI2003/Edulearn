// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:tflite_flutter/tflite_flutter.dart';
//
// void main() => runApp(CameraAndTFLiteApp());
//
// class CameraAndTFLiteApp extends StatefulWidget {
//   @override
//   _CameraAndTFLiteAppState createState() => _CameraAndTFLiteAppState();
// }
//
// class _CameraAndTFLiteAppState extends State<CameraAndTFLiteApp> {
//   late CameraController _cameraController;
//   late List<CameraDescription> _cameras;
//   bool _isCameraReady = false;
//   bool _isDetecting = false;
//
//   var Tflite;
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize the camera
//     _initializeCamera();
//   }
//
//   Future<void> _initializeCamera() async {
//     // Get a list of available cameras
//     _cameras = await availableCameras();
//
//     // Initialize the camera controller
//     _cameraController = CameraController(_cameras[0], ResolutionPreset.medium);
//
//     // Initialize the camera controller and set state when it's initialized
//     _cameraController.initialize().then((_) {
//       if (!mounted) return;
//       setState(() {
//         _isCameraReady = true;
//       });
//     });
//
//     // Load the TFLite model
//     await Tflite.loadModel(
//       model: 'assets/model_unquant.tflite', // Replace with your model's path
//     );
//   }
//
//   @override
//   void dispose() {
//     // Release the camera and TFLite resources
//     _cameraController?.dispose();
//     Tflite.close();
//     super.dispose();
//   }
//
//   void _startCamera() {
//     if (_isCameraReady) {
//       _cameraController.startImageStream((CameraImage image) {
//         if (!_isDetecting) {
//           _isDetecting = true;
//           // Perform object detection or classification using TFLite
//           _runTFLiteInference(image);
//         }
//       });
//     }
//   }
//
//   void _runTFLiteInference(CameraImage image) async {
//     // Process the camera image and run inference with the TFLite model
//     // Replace this with your own image processing and inference code
//
//     // Example:
//     List? output = await Tflite.runModelOnFrame(
//       bytesList: image.planes.map((plane) {
//         return plane.bytes;
//       }).toList(),
//       imageHeight: image.height,
//       imageWidth: image.width,
//       numResults: 1, // Number of inference results to retrieve
//     );
//
//     // Process the output (e.g., display it on the UI)
//     // Your implementation may vary depending on your use case
//
//     // Set _isDetecting to false to allow the next inference
//     _isDetecting = false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Camera and TFLite Example'),
//         ),
//         body: Center(
//           child: _isCameraReady
//               ? CameraPreview(_cameraController)
//               : CircularProgressIndicator(),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _startCamera,
//           child: Icon(Icons.camera),
//         ),
//       ),
//     );
//   }
// }
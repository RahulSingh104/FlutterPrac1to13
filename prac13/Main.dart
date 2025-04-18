import 'dart:io';
import 'package:flutter/material.dart'; import 'package:camera/camera.dart';

void main() async { WidgetsFlutterBinding.ensureInitialized(); final cameras = await availableCameras(); final firstCamera = cameras.first; runApp(CameraApp(camera: firstCamera));
}

class CameraApp extends StatelessWidget { final CameraDescription camera;

const CameraApp({ Key? key,
required this.camera,
}) : super(key: key);

@override
Widget build(BuildContext context) { return MaterialApp(
theme: ThemeData.dark(),
home: CameraScreen(camera: camera),
);
}
}

class CameraScreen extends StatefulWidget { final CameraDescription camera;

const CameraScreen({ Key? key,
required this.camera,
}) : super(key: key);
@override
_CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> { late CameraController _controller;
late Future<void> _initializeControllerFuture; double _brightnessLevel = 0;
Offset _focusPoint = Offset(0.5, 0.5);
 
@override
void initState() { super.initState();
_controller = CameraController( widget.camera, ResolutionPreset.medium,
);
_initializeControllerFuture = _controller.initialize();
}

@override void dispose() {
_controller.dispose(); super.dispose();
}

@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(title: const Text('Camera Example')), body: Stack(
children: [ FutureBuilder<void>(
future: _initializeControllerFuture, builder: (context, snapshot) {
if (snapshot.connectionState == ConnectionState.done) { return CameraPreview(_controller);
} else {
return const Center(child: CircularProgressIndicator());
}
},
),
Positioned( left: 0,
right: 0,
bottom: 20, child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
IconButton(
icon: Icon(Icons.camera), onPressed: () async {
try {
await _initializeControllerFuture;
final image = await _controller.takePicture();
_showSaveDialog(context, image.path);
} catch (e) {
print(e);
}
},
),
IconButton(
	icon: Icon(Icons.center_focus_strong),	
 
onPressed: () async { try {
await _controller.setFocusPoint(_focusPoint);
} catch (e) {
print(e);
}
},
),
Slider( min: -1,
max: 1,
value: _brightnessLevel, onChanged: (value) { setState(() {
_brightnessLevel = value;
});
_adjustBrightness();
},
),
],
),
),
],
),
);
}

void _showSaveDialog(BuildContext context, String imagePath) { showDialog(
context: context,
builder: (context) => AlertDialog( title: Text('Save Photo?'),
content: Text('Do you want to save the photo to your device?'), actions: [
TextButton( onPressed: () {
Navigator.pop(context);
},
child: Text('No'),
),
TextButton( onPressed: () {
Navigator.pop(context);
_savePhoto(imagePath);
},
child: Text('Yes'),
),
],
),
);
}

	void _savePhoto(String imagePath) {	
 
// Implement photo saving logic here, for example using the 'path_provider' package
// For simplicity, this example just prints the path. print('Photo saved at: $imagePath');
}

void _adjustBrightness() {
// Adjust brightness by setting exposure compensation
_controller.setExposureMode(ExposureMode.auto);
_controller.setExposureOffset(_brightnessLevel);
}
}

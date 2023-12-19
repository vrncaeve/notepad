import 'package:flutter/material.dart';
import 'package:notepad_suara1/colors.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen {(super.key)};

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {

  var text = "Hold the button and start speaking";
  var isListening = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        child: CircleAvatar(
          
          backgroundColor: bgColor,
          radius: 35,
          child: Icon(Icons.mic, color: Colors.white),
      
          ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.sort_rounded, color: Colors.white),
        centerTitle: true,
        backgroundColor: bgColor,
        elevation: 0.0,
        title: const Text("speech to text", 
        style: TextStyle(
          fontWeight: FontWeight.w600, 
          color: textColor
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
        margin: const EdgeInsets.only(bottom: 150),
        child: Text(text, style: TextStyle(
          fontSize: 24, color: Colors.black87, fontWeight: FontWeight.w600),
          ),
      ),
    );
  }
}
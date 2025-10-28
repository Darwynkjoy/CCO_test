import 'package:flutter/material.dart';

class BackgroundFormPage extends StatelessWidget {
  const BackgroundFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // 🖼️ Fixed background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // ⬅️ White back arrow in top-left corner
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),

          // 🧾 Scrollable Bottom Sheet starting from 200px from top
          // not clipped by the parent container
          Positioned.fill(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 200), // space before bottom sheet

                  // The actual bottom sheet container
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, -2),
                        ),
                      ],
                    ),
                    child: const _BottomSheetContent(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomSheetContent extends StatelessWidget {
  const _BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    final fields = List.generate(5, (_) => TextEditingController());

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              for (int i = 0; i < fields.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: fields[i],
                    decoration:
                        InputDecoration(labelText: 'Field ${i + 1}'),
                  ),
                ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Next"),
                ),
              ),
              // Add height to allow sheet to scroll beyond screen
              const SizedBox(height: 600),
            ],
          ),
        ),
      ),
    );
  }
}
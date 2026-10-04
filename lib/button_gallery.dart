import 'package:flutter/material.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Gallery'),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const Text(
              'Flutter Material Buttons',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Different button styles and navigation',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            // 1. Elevated Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Elevated Button clicked'),
                    ),
                  );
                },
                child: const Text('Elevated Button'),
              ),
            ),

            const SizedBox(height: 12),

            // 2. Filled Button
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const Text('Profile'),
              ),
            ),

            const SizedBox(height: 12),

            // 3. Filled Tonal Button
            SizedBox(
              width: double.infinity,
              child: FilledButton.tonal(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: const Text('Settings'),
              ),
            ),

            const SizedBox(height: 12),

            // 4. Outlined Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/add');
                },
                child: const Text('Add'),
              ),
            ),

            const SizedBox(height: 12),

            // 5. Text Button
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Text Button clicked'),
                  ),
                );
              },
              child: const Text('Text Button'),
            ),

            const SizedBox(height: 12),

            // 6. Icon Button
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Favorite clicked'),
                  ),
                );
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
            ),

            const SizedBox(height: 12),

            // 7. Button with Icon
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/add');
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Item'),
              ),
            ),

            const SizedBox(height: 20),

            // 8. Custom Styled Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Custom button clicked'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Custom Styled Button',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Logout using pushReplacement
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/login',
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),

      // 9. Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
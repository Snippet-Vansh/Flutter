import 'package:flutter/material.dart';

/// ============================================================================
/// COMPREHENSIVE FLUTTER WIDGETS REFERENCE GUIDE
/// All useful widgets for building Flutter applications
/// ============================================================================

void main() {
  runApp(const UsefulWidgetsApp());
}

class UsefulWidgetsApp extends StatelessWidget {
  const UsefulWidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Useful Flutter Widgets',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const WidgetsMenu(),
    );
  }
}

class WidgetsMenu extends StatelessWidget {
  const WidgetsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widgets Reference')),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          MenuButton(
            title: '1. Container Widget',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ContainerExample()),
            ),
          ),
          MenuButton(
            title: '2. Column & Row',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ColumnRowExample()),
            ),
          ),
          MenuButton(
            title: '3. Stack & Positioned',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StackExample()),
            ),
          ),
          MenuButton(
            title: '4. Expanded Widget',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ExpandedExample()),
            ),
          ),
          MenuButton(
            title: '5. ListView Example',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ListViewExample()),
            ),
          ),
          MenuButton(
            title: '6. GridView Example',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const GridViewExample()),
            ),
          ),
          MenuButton(
            title: '7. TextField Input',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TextFieldExample()),
            ),
          ),
          MenuButton(
            title: '8. Buttons Examples',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ButtonsExample()),
            ),
          ),
          MenuButton(
            title: '9. Card Widget',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CardExample()),
            ),
          ),
          MenuButton(
            title: '10. AnimatedContainer',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const AnimatedContainerExample(),
              ),
            ),
          ),
          MenuButton(
            title: '11. InkWell Effect',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const InkWellExample()),
            ),
          ),
          MenuButton(
            title: '12. ClipRRect Rounded',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ClipRRectExample()),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const MenuButton({required this.title, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(onPressed: onPressed, child: Text(title)),
    );
  }
}

/// ============================================================================
/// 1. CONTAINER WIDGET - Universal Styling Box
/// ============================================================================
class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Container with Style',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text('Circle', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ============================================================================
/// 2. COLUMN & ROW - Arrange Widgets Vertically/Horizontally
/// ============================================================================
class ColumnRowExample extends StatelessWidget {
  const ColumnRowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column & Row')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Column Example (Vertical):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Container(
                  height: 50,
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                Container(
                  height: 50,
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                ),
                Container(
                  height: 50,
                  color: Colors.blue,
                  child: const Center(child: Text('3')),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Row Example (Horizontal):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  child: const Center(child: Text('A')),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  child: const Center(child: Text('B')),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(child: Text('C')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// ============================================================================
/// 3. STACK & POSITIONED - Overlapping Widgets
/// ============================================================================
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack & Positioned')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 250, height: 250, color: Colors.blue),
            Positioned(
              top: 30,
              left: 30,
              child: Container(width: 150, height: 150, color: Colors.red),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
            const Center(
              child: Text(
                'Center',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ============================================================================
/// 4. EXPANDED - Fill Available Space
/// ============================================================================
class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded Widget')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: const Center(
                child: Text('Flex 2', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Flex 1', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: const Center(
                child: Text('Flex 1', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ============================================================================
/// 5. LISTVIEW - Scrollable List
/// ============================================================================
class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('ListView Example')),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(items[index]),
            subtitle: const Text('Subtitle text'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Tapped ${items[index]}'))),
          );
        },
        itemCount: items.length,
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

/// ============================================================================
/// 6. GRIDVIEW - Grid Layout
/// ============================================================================
class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.purple,
      Colors.pink,
      Colors.cyan,
      Colors.brown,
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('GridView Example')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: colors.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: colors[index],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}

/// ============================================================================
/// 7. TEXTFIELD - User Input
/// ============================================================================
class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Input')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Email: ${emailController.text}')),
                );
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

/// ============================================================================
/// 8. BUTTONS - ElevatedButton, OutlinedButton, TextButton
/// ============================================================================
class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Examples')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 15,
          children: [
            ElevatedButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Elevated Button Pressed')),
              ),
              child: const Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Outlined Button Pressed')),
              ),
              child: const Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Text Button Pressed')),
              ),
              child: const Text('TextButton'),
            ),
            IconButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Icon Button Pressed')),
              ),
              icon: const Icon(Icons.favorite),
              iconSize: 30,
              color: Colors.red,
            ),
            FloatingActionButton(
              onPressed: () => ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('FAB Pressed'))),
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

/// ============================================================================
/// 9. CARD WIDGET - Material Design Container
/// ============================================================================
class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Card Title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'This is a card widget with elevation and padding',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('User Profile'),
                subtitle: const Text('user@example.com'),
                trailing: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ============================================================================
/// 10. ANIMATED CONTAINER - Smooth Animation
/// ============================================================================
class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double width = 100;
  double height = 100;
  Color color = Colors.blue;

  void toggleSize() {
    setState(() {
      width = width == 100 ? 250 : 100;
      height = height == 100 ? 250 : 100;
      color = color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: toggleSize, child: const Text('Animate')),
          ],
        ),
      ),
    );
  }
}

/// ============================================================================
/// 11. INKWELL - Tap Effects with Ripple
/// ============================================================================
class InkWellExample extends StatelessWidget {
  const InkWellExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InkWell Effect')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            InkWell(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Container 1 Tapped')),
              ),
              splashColor: Colors.blue,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Tap Here - Ripple Effect',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () => ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Card Tapped'))),
              splashColor: Colors.green,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange),
                      const SizedBox(width: 15),
                      const Expanded(child: Text('Tap this card')),
                      const Icon(Icons.arrow_forward),
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

/// ============================================================================
/// 12. CLIPRRECT - Rounded Corners
/// ============================================================================
class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ClipRRect Rounded Corners')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Rounded Box',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: const Center(
                  child: Text('Circle', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Container(
                width: 200,
                height: 100,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Custom Rounded',
                    style: TextStyle(color: Colors.white),
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

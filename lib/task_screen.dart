import 'package:flutter/material.dart';
class TaskScreen extends StatelessWidget {
  const TaskScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Screen'),
      ),
      body: const Center(
        child: Text('Task Screen Content'),
      ),
    );
  }
}

class SectionETaskScreen extends StatefulWidget {
  const SectionETaskScreen({super.key});

  @override
  State<SectionETaskScreen> createState() =>
      _SectionETaskScreenState();
}

class _SectionETaskScreenState extends State<SectionETaskScreen> {
  final TextEditingController controller = TextEditingController();

  final List<String> assignments = [];

  void addAssignment() {
    if (controller.text.trim().isEmpty) return;

    setState(() {
      assignments.add(controller.text.trim());
      controller.clear();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCCF0FC),
      appBar: AppBar(
        title: const Text('To-do List'),
        backgroundColor: const Color(0xFFFFF0B3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Add an assignment...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: addAssignment,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onSubmitted: (_) => addAssignment(),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'MY ASSIGNMENTS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: assignments.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: index.isEven
                        ? const Color(0xFFFFD6D6)
                        : Colors.white,
                    child: ListTile(
                      title: Text(assignments[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {
                          setState(() {
                            assignments.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky/models/task_model.dart';
import 'package:tasky/services/preference_manager.dart';
import 'package:tasky/widgets/custom_elevated_button.dart';
import 'package:tasky/widgets/custom_text_form_field.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  late final TextEditingController _taskNameController;
  late final TextEditingController _taskDescriptionController;
  late final GlobalKey<FormState> _formKey;
  late final AutovalidateMode _autovalidateMode;
  bool _isHighPriority = false;

  @override
  void initState() {
    super.initState();
    _taskNameController = TextEditingController();
    _taskDescriptionController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    _autovalidateMode = AutovalidateMode.onUserInteraction;
  }

  @override
  Widget build(BuildContext context) {
    final String? poppins = GoogleFonts.poppins().fontFamily;
    final String? roboto = GoogleFonts.roboto().fontFamily;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: const IconThemeData(color: Color(0xFFFFFCFC)),
        title: const Text(
          'New Task',
          style: TextStyle(color: Color(0xFFFFFCFC)),
        ),
      ),

      body: Column(
        children: [
          const SizedBox(height: 8),
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    CustomTextFormField(
                      poppins: poppins,
                      roboto: roboto,
                      validator: (value) {},
                      controller: _taskNameController,
                      titleName: 'Task Name',
                      hintText: 'Finish UI design for login screen',
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      poppins: poppins,
                      roboto: roboto,
                      validator: (value) {},
                      controller: _taskDescriptionController,
                      titleName: 'Task Description',
                      hintText:
                          'Finish onboarding UI and hand off to devs by Thursday.',
                      maxLines: 5,
                    ),
                    const SizedBox(height: 20),
                    SwitchListTile(
                      activeTrackColor: const Color(0xFF15B86C),
                      title: Text(
                        'High Priority',
                        style: TextStyle(
                          color: const Color(0xFFFFFCFC),
                          fontSize: 16,
                          fontFamily: poppins,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: _isHighPriority,
                      onChanged: (value) {
                        setState(() {
                          _isHighPriority = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF15B86C),
                foregroundColor: Colors.white,
                fixedSize: Size(MediaQuery.of(context).size.width, 40),
              ),
              onPressed: () {
                final taskJson = PreferenceManager().getString(key: 'tasks');
                List<TaskModel> tasks = [];
                if (taskJson != null) {
                  final taskDecode = jsonDecode(taskJson) as List<dynamic>;
                  tasks = taskDecode.map((e) => TaskModel.fromJson(e)).toList();
                }
                TaskModel task = TaskModel(
                  taskName: _taskNameController.text,
                  taskDescription: _taskDescriptionController.text,
                  isHighPriority: _isHighPriority,
                  id: tasks.length + 1,
                );

                tasks.add(task);

                PreferenceManager().setString(
                  key: 'tasks',
                  value: jsonEncode(tasks.map((e) => e.toJson()).toList()),
                );
              },
              icon: const Icon(Icons.add),
              label: Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: poppins,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

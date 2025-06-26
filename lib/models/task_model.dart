class TaskModel {
  final String taskName;
  final String taskDescription;
  final bool isHighPriority;
  final bool isDone = false;
  final int id;

  const TaskModel(
    {
    required this.taskName,
    required this.taskDescription,
    required this.isHighPriority,
      required this.id,
  });

  Map<String, dynamic> toJson() {
    return {
      "taskName": taskName,
      "taskDescription": taskDescription,
      "isHighPriority": isHighPriority,
      "isDone": isDone,
      'id': id,
    };
  }

  factory TaskModel.fromJson(Map<String, dynamic> data) {
    return TaskModel(
      taskName: data["taskName"],
      taskDescription: data['taskDescription'],
      isHighPriority: data['isHighPriority'],
      id: data['id'],
    );
  }
}

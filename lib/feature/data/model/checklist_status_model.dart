import '../../domain/entity/checklist_status_count_entity.dart';

class ChecklistStatusModel extends ChecklistStatusEntity {
  const ChecklistStatusModel({
    required int count,
  }) : super(count: count);

  factory ChecklistStatusModel.fromJson(Map<String, dynamic> json) {
    final checklistStatus = json['response_data']['checklist_status'];

    if (checklistStatus is Map<String, dynamic>) {
      return ChecklistStatusModel(
        count: checklistStatus['count'] ?? 0, // Default to 0 if count is missing
      );
    } else {
      // Handle unexpected response (e.g., error message as a string)
      return ChecklistStatusModel(count: 0); // Default to 0 or handle as needed
    }
  }
}

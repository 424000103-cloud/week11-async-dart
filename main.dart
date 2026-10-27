class StudentRecord {
  String name;
  String course;

  StudentRecord(this.name, this.course);

  Future<String> saveRecord() async {
    await Future.delayed(Duration(seconds: 2));

    return "Student record saved successfully!";
  }
}

Future<void> main() async {
  StudentRecord student = StudentRecord("Rocha", "BSIT");

  print("Student Name: ${student.name}");
  print("Course: ${student.course}");

  print("Saving student record...");

  Future<String> resultFuture = student.saveRecord();

  print("Program is still running while saving.");

  String result = await resultFuture;

  print(result);
  print("Task completed!");
}

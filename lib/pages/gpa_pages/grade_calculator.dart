class Course {
  final String grade;
  final int credits;

  Course(this.grade, this.credits);
}

final gradePointMap = {
  'A+': 4.00,
  'A': 4.00,
  'A-': 3.70,
  'B+': 3.30,
  'B': 3.00,
  'B-': 2.70,
  'C+': 2.30,
  'C': 2.00,
  'C-': 1.70,
  'D+': 1.30,
  'D': 1.00,
  'F': 0.00,
};

double calculateGpa(List<Course> courses) {
  double totalCredits = 0;
  double totalGradePoints = 0;

  for (var course in courses) {
    totalCredits += course.credits;
    totalGradePoints += gradePointMap[course.grade]! * course.credits;
  }

  return totalGradePoints / totalCredits;
}

String getGpaMessage(double gpa) {
  if (gpa >= 3.75) {
    return 'CGPA Cut-off: First Class';
  } else if (gpa >= 3.30) {
    return 'CGPA Cut-off: Second Upper';
  } else if (gpa >= 2.75) {
    return 'CGPA Cut-off: Second Lower';
  } else if (gpa >= 2.00) {
    return 'CGPA Cut-off: Pass';
  } else {
    return 'CGPA Cut-off: Fail';
  }
}

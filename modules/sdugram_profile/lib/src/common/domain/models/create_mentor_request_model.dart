class CreateMentorRequestModel {
  final String coverLetter;
  final String occupation;
  final String university;
  final String company;
  final int yearExperience;

  CreateMentorRequestModel({
    required this.coverLetter,
    required this.occupation,
    required this.university,
    required this.company,
    required this.yearExperience,
  });
}

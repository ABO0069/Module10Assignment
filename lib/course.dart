
class Course {
  final String imageUrl;
  final String title;
  final String batchno;
  final String seatCount;
  final String daysLeft;

  Course({
    required this.imageUrl,
    required this.title,
    required this.batchno,
    required this.seatCount,
    required this.daysLeft,
  });
}

//this is the course list data
List<Course> courses = [
  Course(
    imageUrl: 'assets/mern.jpg', 
    title: 'Full Stack Web Development with JavaScript (MERN)',
    batchno: '১৪',
    seatCount: '৬৯ সিট বাকী',
    daysLeft: '৩৬ দিন বাকি',
  ),
  Course(
    imageUrl: 'assets/pythonreact.jpg', 
    title: 'Full Stack Web Development with Python, Django & React',
    batchno: '৮',
    seatCount: '৭ সিট বাকী',
    daysLeft: '১ দিন বাকি',
  ),
  Course(
    imageUrl: 'assets/asp.jpg', 
    title: 'Full Stack Web Development with ASP.NET Core',
    batchno: '১০',
    seatCount: '৩৪ সিট বাকী',
    daysLeft: '২০ দিন বাকি',
  ),
  Course(
    imageUrl: 'assets/sqa.jpg', 
    title: 'SQA: Manual & Automated Testing',
    batchno: '৬',
    seatCount: '১২ সিট বাকী',
    daysLeft: '১৫ দিন বাকি',
  ),
];
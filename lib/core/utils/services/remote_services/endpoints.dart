class EndPoints {
  static const baseUrl = "https://eduai.vitaparapharma.com/api/v1/";

  static const login = 'auth/login';
  static const register = 'auth/new-parent-registration';
  static const genders = 'public/enumeration/gender';
  static const nationalities = 'public/enumeration/nationality';
  static const religion = 'public/enumeration/religion';
  static const studyLevel = 'public/enumeration/study-level';
  static const associationType = 'public/enumeration/association-type';
  static const getAllPosts = 'post/all?size=10&page=';
  static const getAllEvents = 'event/all-today?size=10&page=';
  static const getUpcomingEvents = 'dashboard/upcoming-events?size=10&page=';
  static const getPostComments = 'post/1/comment/all?size=10&page=';
  static const getAllFees = 'fees/all?';
  static const getFeeDetails = 'fees/details?invoiceId=';
  static const allSons = 'parent/students';
  static const sendFeedback = 'feedback';
  static const getEmails = 'auth/password/find-account';
  static const getSemesters = 'student-study/Semesters';
  static const selectEmail = 'auth/password/select-email';
  static const verifyEmail = 'auth/password/validate-code';
  static const resetPassword = 'auth/password/reset-password';

  static const createComplaint = 'complain/parent';

  static const getAllReportTypes = 'public/enumeration/report-type';

  static const createReport = 'report';

  static const getTeachersByStudent = 'complain/student-teachers';

  static const confirmEvent = 'event-attendance/add-myself';
  static const cancelEvent = 'event-attendance/remove-myself';

  static const getNotifications = 'my-notification/all';

  static const getParentProfile = 'my-account/profile/parent';
  static const updateParentProfile = 'my-account/profile/parent/update';
  static const updateParentProfilePicture = 'my-account/picture';

  static const studentSchedule = 'parent/student-schedule';
  static const studentAttendance = "parent/student-sessions-attendance";

  static const homeworks = 'parent/student-homeworks';

  static var materials = "parent/student-materials";

  static var studentAttendanceSummary = "parent/student-attendance-summary";

  static var makeCashPayment = "deposit-confirmation";

  static var getAllTeachers = "chat-utils/teachers";

  static var getAllEmployees = "chat-utils/employees";

  static var getAllComplains = 'complain/all';
  static var getUpcomingExam =
      'academic/educationalAffairs/exams/upcomingExamsForParent';
  static var getPreviousExam =
      'academic/educationalAffairs/exams/previousExamsForParent';

  static var getComplain = 'complain';

  static var getStudentGrades = "grade-report/student-report";

  static var getAcademicYears = "student-study/Academic-YEAR";

  static var gpa = "student/progress/gpa-comparison-ForParent";

  static var attendance = "student/progress/attendanceForParent";

  static String markAsRead(id) => 'my-notification/$id/read';
}

/***************************************************************************
A list of failed student's exams, along with each failed question.
****************************************************************************/

SELECT St.Name , St.LastName,Rg.Semester, C.Name as 'Course', SE.Score as 'Exam Score',ME.Day as 'Exam Day',Q.Description as 'Question',AnS.Answer ,Al.Alternative as 'Correct Alternative'
FROM Student as St, Registration as Rg, TeacherCourse as TC, Course as C , StudentExam as SE,AnswerStudent as AnS,
QuestionExam as QE , Question as Q, Alternatives as Al, ModelExam as ME
WHERE St.Id=Rg.IdStudent and Rg.IdTeacherCourse = TC.IdTeacherCourse and TC.IdCourse = C.Id and ME.IdCourseTeacher=TC.IdTeacherCourse and SE.IdRegistration = Rg.Id and AnS.IdStudentExam =SE.Id
 and QE.Id = AnS.IdQuestionExam and Q.Id = QE.IdQuestion and Q.Id = Al.IdQuestion and Al.IsCorrect = 1 and not (AnS.Answer = Al.Alternative);

/***************************************************************************
List of questions related to the failed topics to provide a deeper understanding of the subject matter.
****************************************************************************/

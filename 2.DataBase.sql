USE [master]
GO
/****** Object:  Database [DBNotas]    Script Date: 26/04/2023 22:26:10 ******/
CREATE DATABASE [DBNotas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBNotas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBNotas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBNotas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBNotas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBNotas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBNotas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBNotas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBNotas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBNotas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBNotas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBNotas] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBNotas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBNotas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBNotas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBNotas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBNotas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBNotas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBNotas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBNotas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBNotas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBNotas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBNotas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBNotas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBNotas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBNotas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBNotas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBNotas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBNotas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBNotas] SET RECOVERY FULL 
GO
ALTER DATABASE [DBNotas] SET  MULTI_USER 
GO
ALTER DATABASE [DBNotas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBNotas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBNotas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBNotas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBNotas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBNotas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBNotas', N'ON'
GO
ALTER DATABASE [DBNotas] SET QUERY_STORE = OFF
GO
USE [DBNotas]
GO
/****** Object:  Table [dbo].[Alternatives]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alternatives](
	[Id] [numeric](18, 0) NOT NULL,
	[IdQuestion] [numeric](18, 0) NOT NULL,
	[Alternative] [varchar](50) NOT NULL,
	[IsCorrect] [bit] NOT NULL,
 CONSTRAINT [PK_Alternatives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerStudent]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerStudent](
	[Id] [numeric](18, 0) NOT NULL,
	[IdStudentExam] [numeric](18, 0) NOT NULL,
	[Answer] [varchar](50) NOT NULL,
	[IdQuestionExam] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_AnswerStudent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Career]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Career](
	[Id] [numeric](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IdProfessionalSchool] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_TCareer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [numeric](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelExam]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelExam](
	[Id] [numeric](18, 0) NOT NULL,
	[LimitTime] [varchar](50) NOT NULL,
	[Day] [date] NOT NULL,
	[IdCourseTeacher] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_ModelExam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfessionalSchool]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessionalSchool](
	[Id] [numeric](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TProfessionalSchool] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [numeric](18, 0) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[IdSubjects] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionExam]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionExam](
	[Id] [numeric](18, 0) NOT NULL,
	[IdModelExam] [numeric](18, 0) NOT NULL,
	[IdQuestion] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_QuestionExam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[Id] [numeric](18, 0) NOT NULL,
	[Semester] [varchar](5) NOT NULL,
	[IdStudent] [numeric](18, 0) NOT NULL,
	[IdTeacherCourse] [numeric](18, 0) NOT NULL,
	[IdCareer] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[Id] [numeric](18, 0) NOT NULL,
	[IdQuestion] [numeric](18, 0) NOT NULL,
	[IdReviewInterval] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReviewInterval]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewInterval](
	[Id] [numeric](18, 0) NOT NULL,
	[IntervalDays] [numeric](2, 0) NOT NULL,
 CONSTRAINT [PK_ReviewInterval] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [numeric](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TStudent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentExam]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentExam](
	[Id] [numeric](18, 0) NOT NULL,
	[IdRegistration] [numeric](18, 0) NOT NULL,
	[Score] [numeric](2, 0) NOT NULL,
 CONSTRAINT [PK_StudentExam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [numeric](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IdCourse] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [numeric](18, 0) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherCourse]    Script Date: 26/04/2023 22:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherCourse](
	[IdTeacherCourse] [numeric](18, 0) NOT NULL,
	[IdCourse] [numeric](18, 0) NOT NULL,
	[IdTeacher] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_TeacherCourse] PRIMARY KEY CLUSTERED 
(
	[IdTeacherCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alternatives]  WITH CHECK ADD  CONSTRAINT [FK_Alternatives_Question] FOREIGN KEY([IdQuestion])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[Alternatives] CHECK CONSTRAINT [FK_Alternatives_Question]
GO
ALTER TABLE [dbo].[AnswerStudent]  WITH CHECK ADD  CONSTRAINT [FK_AnswerStudent_QuestionExam] FOREIGN KEY([IdQuestionExam])
REFERENCES [dbo].[QuestionExam] ([Id])
GO
ALTER TABLE [dbo].[AnswerStudent] CHECK CONSTRAINT [FK_AnswerStudent_QuestionExam]
GO
ALTER TABLE [dbo].[AnswerStudent]  WITH CHECK ADD  CONSTRAINT [FK_AnswerStudent_StudentExam] FOREIGN KEY([IdStudentExam])
REFERENCES [dbo].[StudentExam] ([Id])
GO
ALTER TABLE [dbo].[AnswerStudent] CHECK CONSTRAINT [FK_AnswerStudent_StudentExam]
GO
ALTER TABLE [dbo].[Career]  WITH CHECK ADD  CONSTRAINT [FK_Career_ProfessionalSchool] FOREIGN KEY([IdProfessionalSchool])
REFERENCES [dbo].[ProfessionalSchool] ([Id])
GO
ALTER TABLE [dbo].[Career] CHECK CONSTRAINT [FK_Career_ProfessionalSchool]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Subjects] FOREIGN KEY([IdSubjects])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Subjects]
GO
ALTER TABLE [dbo].[QuestionExam]  WITH CHECK ADD  CONSTRAINT [FK_QuestionExam_ModelExam] FOREIGN KEY([IdModelExam])
REFERENCES [dbo].[ModelExam] ([Id])
GO
ALTER TABLE [dbo].[QuestionExam] CHECK CONSTRAINT [FK_QuestionExam_ModelExam]
GO
ALTER TABLE [dbo].[QuestionExam]  WITH CHECK ADD  CONSTRAINT [FK_QuestionExam_Question] FOREIGN KEY([IdQuestion])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[QuestionExam] CHECK CONSTRAINT [FK_QuestionExam_Question]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Career] FOREIGN KEY([IdCareer])
REFERENCES [dbo].[Career] ([Id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Career]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Student] FOREIGN KEY([IdStudent])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Student]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_TeacherCourse] FOREIGN KEY([IdTeacherCourse])
REFERENCES [dbo].[TeacherCourse] ([IdTeacherCourse])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_TeacherCourse]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Question] FOREIGN KEY([IdQuestion])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Question]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_ReviewInterval] FOREIGN KEY([IdReviewInterval])
REFERENCES [dbo].[ReviewInterval] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_ReviewInterval]
GO
ALTER TABLE [dbo].[StudentExam]  WITH CHECK ADD  CONSTRAINT [FK_StudentExam_Registration] FOREIGN KEY([IdRegistration])
REFERENCES [dbo].[Registration] ([Id])
GO
ALTER TABLE [dbo].[StudentExam] CHECK CONSTRAINT [FK_StudentExam_Registration]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Course] FOREIGN KEY([IdCourse])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Course]
GO
ALTER TABLE [dbo].[TeacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCourse_Course] FOREIGN KEY([IdCourse])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[TeacherCourse] CHECK CONSTRAINT [FK_TeacherCourse_Course]
GO
ALTER TABLE [dbo].[TeacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCourse_Teacher] FOREIGN KEY([IdTeacher])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[TeacherCourse] CHECK CONSTRAINT [FK_TeacherCourse_Teacher]
GO
USE [master]
GO
ALTER DATABASE [DBNotas] SET  READ_WRITE 
GO

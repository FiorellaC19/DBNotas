/********
							DATOS
Add the data to their respective tables
*********/
USE [DBNotas]
GO

/* Table Student*/
insert into Student values 
(1, 'Camila' ,'Rodrigez'),
(2, 'Andre' ,'Chalco'),
(3, 'Romina' ,'Fernandez'),
(4, 'Paolo' ,'Carrasco'),
(5, 'Jimena' ,'Rojas')

GO


/* Table ProfessionalSchool*/
insert into ProfessionalSchool values 
(1, 'Letras'),
(2, 'Numeros')

GO


/* Table Carrer*/
insert into Career values 
(1, 'Derecho',1),
(2, 'Ing Mecanica',1),
(3, 'Ing Informatica',2)

GO


/* Table Carrer*/
insert into Course values 
(1, 'Matematica'),
(2, 'Musica'),
(3, 'Constitucion'),
(4, 'Algoritmica')

GO


/* Table Teacher*/
insert into Teacher values 
(1, 'Luis' ,'Beltran'),
(2, 'Agatha' ,'Nuñez'),
(3, 'Gustavo' ,'Cerati'),
(4, 'Arturo' ,'Rozas')

GO


/* Table TeacherCourse*/
insert into TeacherCourse values 
(1, 1,4),
(2, 2,3),
(3, 3,2),
(4, 4,1)

GO


/* Table Registration*/
insert into Registration values 
(1, '23-I',1, 3,1),
(2, '23-I',1, 2,1),
(3, '23-I',2, 4,2),
(4, '23-I',3, 4,3),
(5, '23-I',3, 1,3),
(6, '23-I',4, 4,3),
(7, '23-I',4, 1,3)

GO


/* Table Subjects*/
insert into Subjects values 
(1, 'Parcial1_Mat',1),
(2, 'Parcial1_Mu',2),
(3, 'Parcial1_Cons',3),
(4, 'Parcial1_Alg',4)

GO


/* Table Question*/
insert into Question values 
(1, '2 + 2',1),
(2, '8 x 7',1),
(3, 'Que tipo es "True"',4),
(4, ' "15" es de tipo numerico',4),
(5, 'A cuantos tiempos equivale una negra ?',2),
(6, 'A cuantos tiempos equivale una corchea?',2),
(7, 'Pregunta_Cons1',3),
(8, 'Pregunta_Cons2',3)

GO


/* Table Alternatives*/
insert into Alternatives values 
(1, 1, '4',1),
(2, 1, '5',0),
(3, 1, '0',0),
(4, 2, '70',0),
(5, 2, '56',1),
(6, 2, '50',0),
(7, 3, 'Booleano',1),
(8, 3, 'Numerico',0),
(9, 4, 'Verdadero',1),
(10, 4, 'Falso',0),
(11, 5, '1/4 de redonda',1),
(12, 5, '1/2 de redonda',0),
(13, 6, '1/8 de redonda',1),
(14, 6, '1/16 de redonda',0),
(15, 7, 'Verdadero',0),
(16, 7, 'Falso',1),
(17, 8, 'Verdadero',0),
(18, 8, 'Falso',1)

GO


/* Table ReviewInterval*/
insert into ReviewInterval values 
(1, 2),
(2, 5),
(3, 10),
(4, 30),
(5, 60)

GO


/* Table Review*/
insert into Review values 
(1, 1,3),
(2, 1,2),
(3, 1,2),
(4, 1,5),
(5, 1,3),
(6, 1,2)

GO


/* Table StudentExam*/
insert into StudentExam values 
(1, 1,10),
(2, 3,10),
(3, 5,15),
(4, 7,9)

GO


/* Table ModelExam*/
insert into ModelExam values 
(1, '2h', '15/05/2023',3),
(2, '2h', '16/05/2023',4),
(3, '2h', '17/05/2023',1)

GO


/* Table QuestionExam*/
insert into QuestionExam values 
(1, 1,7),
(2, 2,3),
(3, 3,1)

GO


/* Table AnswerStudent*/
insert into AnswerStudent values 
(1, 1, 'Verdadero',1),
(2, 2, 'Numerico',2),
(3, 3, '5',3),
(4, 4, '0',3)

GO
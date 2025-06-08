-- DatabaseScripts/Schema.sql
CREATE TABLE Courses (
    Id INT PRIMARY KEY,
    Code VARCHAR(20) NOT NULL,
    Name VARCHAR(100) NOT NULL,
    LectureHours INT NOT NULL,
    LabHours INT NOT NULL,
    EligibleStudents INT NOT NULL
);

CREATE TABLE Classrooms (
    Id INT PRIMARY KEY,
    Code VARCHAR(20) NOT NULL,
    Type VARCHAR(10) NOT NULL, -- 'Lecture' or 'Lab'
    Capacity INT NOT NULL
);

CREATE TABLE Schedules (
    Id INT PRIMARY KEY,
    CourseId INT NOT NULL,
    ClassroomId INT NOT NULL,
    Day INT NOT NULL, -- 0=Sunday, 1=Monday, etc.
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    IsLab BIT NOT NULL,
    FOREIGN KEY (CourseId) REFERENCES Courses(Id),
    FOREIGN KEY (ClassroomId) REFERENCES Classrooms(Id)
);
//
//  main.swift
//  Grade
//
//  Created by StudentPM on 1/22/25.
//

import Foundation
import CSV

//VARIABLES
do{
    let stream = InputStream(fileAtPath: "/Users/StudentPM/Desktop/students.csv")
    let csv = try CSVReader(stream: stream!)
    while let row = csv.next(){
        print(row)
    }
}
catch{
    print("Error!")
}

//Student name
var names: [String] = []
//Their average of their scores
var finalScore: [Int] = []
//line of their scores of each assignment
var studentScores: [[String]] = []

var firstTime = true

if firstTime == true{
    menu()
    firstTime = false
}

// FUNCTIONS

func menu(){
    print("Welcome to the Grade Manager!")
    print("What would you like to do? (Enter the number): \n1. Display grade of a single student \n2. Display all grades for a student \n3. Display all grades of ALL students \n4. Find the average grade of the class \n5. Find the average grade of an assignment \n6. Find the lowest grade in the class \n7. Find the highest grade of the class \n8. Filter students by grade range \n9. Quit")
    
    if let userInput = readLine(), let number = Int(userInput), number<10{
        if number == 1{
            gradeOfStudent()
        }
        else if number == 2{
            allGradesForStudent()
        }
        else if number == 3{
            allStudentGrades()
        }
        else if number == 4{
            averGradesForClass()
        }
        else if number == 5{
            averGradeForAssignment()
        }
        else if number == 6{
            lowestGradeForClass()
        }
        else if number == 7{
            highestGradeForClass()
        }
        else if number == 8{
            filterStudents()
        }
        else if number == 9{
            Quit()
        }
    }
    else{
        print("Nuh uh! Put number that's listed.")
        menu()
    }
}

func gradeOfStudent(){
    print("Which student would you like to choose?")
    
    if let studentName = readLine(){
        
    }
    
    menu()
}

func allGradesForStudent(){
    
    menu()
}

func allStudentGrades(){
    
    menu()
}

func averGradesForClass(){
    
    menu()
}

func averGradeForAssignment(){
    
    menu()
}

func lowestGradeForClass(){
    
    menu()
}

func highestGradeForClass(){
    
    menu()
}

func filterStudents(){
    
    menu()
}

func Quit(){
    print("Have a great rest of your day!")
}

//
//  main.swift
//  Grade
//
//  Created by StudentPM on 1/22/25.
//

import Foundation
import CSV

//Student name
var names: [String] = []
//Their average of their scores
var finalScore: [Double] = []
//line of their scores of each assignment
var studentScores: [[String]] = []

//VARIABLES
do{
    let stream = InputStream(fileAtPath: "/Users/StudentPM/Desktop/students.csv")
    let csv = try CSVReader(stream: stream!)
    while let row = csv.next(){
        
        handleData(data: row)
    }
}
catch{
    print("Error!")
}



var firstTime = true

if firstTime == true{
    menu()
    firstTime = false
}

// FUNCTIONS

func handleData(data: [String]){
    var tempScore: [String] = []
    
    //Get the name in the names array
    for i in data.indices{
        if i == 0{
            names.append(data[i])
        }
        else{
            //get the ones that are score numbers
            tempScore.append(data[i])
        }
    }
    
    studentScores.append(tempScore)
    
    var scoresCalculated: Double = 0.0
    
    for i in tempScore.indices{
        if let doubleScore = Double(tempScore[i]){
            scoresCalculated += doubleScore
        }
    }
    
    let finalScoreCalculated = scoresCalculated/Double(tempScore.count)
    
    finalScore.append(finalScoreCalculated)
    
//    for i in studentScores.indices{
//        //Using this to get the outer array
//        var finalGradeCalculated: Double = 0
//        
//        for j in studentScores[i].indices{
//            //inner array to add the inner array together
//            if let intGrade = Int(studentScores[i][j]){
//                scoresCalculated += intGrade
//            }
//        }
//        if let doubleScore = Double(scoresCalculated), let doubleCount = Double(studentScores[i].count){
//            finalGradeCalculated = scoresCalculated/(studentScores[i].count)
//        }
        
//        finalScore.append(finalGradeCalculated)
//    }
    
}

func menu(){
    //Starting page
    print("Welcome to the Grade Manager!")
    print("What would you like to do? (Enter the number): \n1. Display grade of a single student \n2. Display all grades for a student \n3. Display all grades of ALL students \n4. Find the average grade of the class \n5. Find the average grade of an assignment \n6. Find the lowest grade in the class \n7. Find the highest grade of the class \n8. Filter students by grade range \n9. Quit")
    
    if let userInput = readLine(), let number = Int(userInput), number<10{
        //Sending them to the function that corresponds with their option chosen
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
        for i in names.indices{
            //if it's the same as the name in the array, print the final score for that student
            if studentName == names[i]{
                print(names[i] + "'s grades are:")
                print(finalScore[i])
            }
        }
    }
    menu()
}

func allGradesForStudent(){
    print("Which student would you like to choose?")
    
    if let studentName = readLine(){
        for i in names.indices{
            //if it's the same as the name in the array, print the assignment scores of that student
            if studentName == names[i]{
                print(names[i] + "'s grades are:")
                print(studentScores[i])
            }
        }
    }
    menu()
}

func allStudentGrades(){
    for i in names.indices{
        print(names[i] + "'s ares are: \(studentScores[i])")
    }
    
    menu()
}

func averGradesForClass(){
    var sum: Double = 0.0
                       
    for i in finalScore.indices{
        sum += finalScore[i]
    }
    
    print(sum/Double(finalScore.count))
    
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

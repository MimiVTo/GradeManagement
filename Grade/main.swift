//
//  main.swift
//  Grade
//
//  Created by StudentPM on 1/22/25.
//

import Foundation

//VARIABLES


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
            singleStudentGrade()
        }
    }
}

func singleStudentGrade(){
    
}

//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Print out the input provided
print("You said:")
print(rawInput)

// Make sure the input is not nil
// (unwrap the optonial)
guard let input = rawInput else {
    //If we got here, input is nil, so quit program
    exit(9) // exit with error code 9
}

// Print the verified input
print(input)

// Loop over each character of the input string
var happyCount = 0
var sadCount = 0
for individualCharacter in input {
    
    //DEBUG: What character are we looking at now?
    print(individualCharacter)
    
    // Is the character happy,sad, or neither?
    switch individualCharacter {
    case "😃" , "☺️" , "😄" , "🙂" , "😊" :
        happyCount += 1
    case "😔" , "☹️" , "😕" , "🙁" :
        sadCount += 1
    default :
        break // do nothing
    }
    
}

// OUTPUT
if happyCount > sadCount {
    print("Happy")
} else if happyCount == 0 && sadCount == 0 {
    print("None")
} else if happyCount == sadCount {
    print("Unsure")
} else if happyCount < sadCount {
    print("Sad")
}


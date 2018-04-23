//
//  main.swift
//  This program uses recursion to reverse a string
//
//  Created by Matthew Lourenco on 23/04/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

class reverseStr {
	
	var sentence: String = ""
	var reverse: String = ""
	
	init() {
		//Default constructor
		
		//get the string to reverse
		print("Enter a sentence:")
		let input: String? = readLine(strippingNewline: true)
		if input != nil {
			sentence = input!
		}
		
		reverseSentence(unprocessed: sentence);
	}
	
	func reverseSentence(unprocessed: String) {
		//Reverse the sentence
		let subString: Substring;
		let lastChar: Character;
		
		if(unprocessed.count > 0) {
			let index = unprocessed.index(unprocessed.startIndex, offsetBy: unprocessed.count - 1)
			subString = unprocessed[..<index]
			lastChar = unprocessed[index]
			reverse += [lastChar]
			
			print(subString + " -> " + reverse)
			
			reverseSentence(unprocessed: String(subString))
		}
	}
	
	func getSentence() -> String { return sentence } //Getter
	
	func getReverse() -> String { return reverse } //Getter
}

//Instantiate a ReverseStr object
let reverser: reverseStr = reverseStr()
print("Original: \(reverser.getSentence())")
print("Reversed: \(reverser.getReverse())")
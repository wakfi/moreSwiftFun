//
//  main.swift
//  moreSwiftFun
//
//  Created by Gray, John Walker on 10/2/20.
//  Copyright © 2020 Walker Gray. All rights reserved.
//

import Foundation

func getPositiveInteger() throws -> Int
{ 
  print("Enter a positive integer: ", terminator: "")
  guard let inputString = readLine(), let inputInt = Int(inputString) else 
  { 
    throw UserInputError.invalidInteger 
  }
  if inputInt <= 0 
  {
    throw UserInputError.invalidPositiveInteger
  }
  return inputInt
}
/*
do {
  let value = try getPositiveInteger() 
  print("resolved: \(value)")
} catch {
  print("failed to get positive int")
}


let iso = readLine()

let numdigets = iso?.count
print(numdigets)


let anotherIso = readLine() ?? ""
if let inputStr = iso
{
  let num: Int = Int(inputStr) ?? 0
  print(num)
}
*/

// MARK: - closures

let nums = [1,2,3,4,5]
print(nums)
let task1 = nums.map { $0 * 2 }
print(task1)

let task2 = nums.filter { $0 % 2 == 0 }
print(task2)

let task3 = nums.reduce(1) { $0 * $1 }
print(task3)


let sentence = ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]
let task4 = sentence.filter { $0.contains("o") }
let task5 = sentence.map { $0.uppercased() }
let task6 = sentence.reduce("") { (result: String, element: String) in result + String(element[element.startIndex]) }
print(sentence)
print(task4)
print(task5)
print(task6)

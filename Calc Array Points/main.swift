//
//  main.swift
//  Calc Array Points
//
//  Created by studentuser on 10/12/17.
//

import Foundation

func mathOperation(operation: String, num1: Int, num2: Int) -> Int {
    switch operation {
    case "add":
        return add(num1: num1, num2: num2)
    case "subtract":
        return subtract(num1: num1, num2: num2)
    case "multiply":
        return multiply(num1: num1, num2: num2)
    default:
        return divide(num1: num1, num2: num2)
    }
}

func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

func subtract(num1: Int, num2: Int) -> Int {
    return num1 - num2
}

func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

func divide(num1: Int, num2: Int) -> Int {
    return num1 / num2
}

func genericMathOperation(operation: String, nums: [Int]) -> Int {
    switch operation {
    case "add":
        return add(nums: nums)
    case "multiply":
        return multiply(nums: nums)
    case "count":
        return count(nums: nums)
    default:
        return avg(nums: nums)
    }
}

func add(nums: [Int]) -> Int {
    var result = 0
    for num in nums {
        result += num
    }
    return result
}

func multiply(nums: [Int]) -> Int {
    var result = 1
    for num in nums {
        result *= num
    }
    return result
}

func count(nums: [Int]) -> Int {
    return nums.count
}

func avg(nums: [Int]) -> Int {
    var total = 0
    for num in nums {
        total += num
    }
    return total / count(nums: nums)
}

func add(point1: [String:Int], point2: [String:Int]) -> [String:Int]? {
    if (point1["x"] != nil && point2["x"] != nil && point1["y"] != nil && point2["y"] != nil) {
        return ["x": point1["x"]! + point2["x"]!, "x": point1["y"]! + point2["y"]!];
    }
    return nil
}
func subtract(point1: [String:Int], point2: [String:Int]) -> [String:Int]? {
    if (point1["x"] != nil && point2["x"] != nil && point1["y"] != nil && point2["y"] != nil) {
        return ["x": point1["x"]! - point2["x"]!, "x": point1["y"]! - point2["y"]!];
    }
    return nil
}
func add(point1: [String:Double], point2: [String:Double]) -> [String:Double]? {
    if (point1["x"] != nil && point2["x"] != nil && point1["y"] != nil && point2["y"] != nil) {
        return ["x": point1["x"]! + point2["x"]!, "x": point1["y"]! + point2["y"]!];
    }
    return nil
}
func subtract(point1: [String:Double], point2: [String:Double]) -> [String:Double]? {
    if (point1["x"] != nil && point2["x"] != nil && point1["y"] != nil && point2["y"] != nil) {
        return ["x": point1["x"]! - point2["x"]!, "x": point1["y"]! - point2["y"]!];
    }
    return nil
}


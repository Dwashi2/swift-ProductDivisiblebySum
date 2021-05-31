//
//  ViewController.swift
//  ProductDivisiblebySum
//
//  Created by Daniel Washington Ignacio on 31/05/21.
//

/*
 Write a function that returns true if the product of an array is divisible by the sum of that same array. Otherwise, return false.

 Examples

 divisible([3, 2, 4, 2]) ➞ false

 divisible([4, 2, 6]) ➞ true
 // 4 * 2 * 6 / (4 + 2 + 6)

 divisible([3, 5, 1]) ➞ false
 Notes

 N/A
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //print(self.divisible([3, 2, 4, 2]))
        //print(self.divisible([4, 2, 6]))
        print(self.divisible([3, 5, 1]))
    }

    func divisible(_ arr: [Int]) -> Bool {
        var sum: Int = 0
        var multiplication: Int = 1
        for n in arr{
            sum = n + sum
            multiplication = n * multiplication
        }
            
        if multiplication % sum == 0  {
            return true
        }
        return false
    }
}


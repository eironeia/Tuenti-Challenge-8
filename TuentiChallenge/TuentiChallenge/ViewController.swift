//
//  ViewController.swift
//  TuentiChallenge
//
//  Created by Alex Cuello ortiz on 25/04/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import UIKit
import Foundation

/* EXTENSIONS */

extension String {
    
    func generateArrayWithNumbers() -> [Int] {
        let maxNumber = self.count - 1
        var result: [Int] = []
        for i in 0...maxNumber {
            result += [i]
        }
        return result
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getHiddenNumbers(inputValues: ["qkflsczuantb"])
        self.view.backgroundColor = UIColor.green
    }
  
    
    func permute<C: Collection>(items: C) -> [[C.Iterator.Element]] {
        var scratch = Array(items) // This is a scratch space for Heap's algorithm
        var result: [[C.Iterator.Element]] = [] // This will accumulate our result
        
        // Heap's algorithm
        func heap(_ n: Int) {
            if n == 1 {
                result.append(scratch)
                return
            }
            
            for i in 0..<n-1 {
                heap(n-1)
                let j = (n%2 == 1) ? 0 : i
                scratch.swapAt(j, n-1)
            }
            heap(n-1)
        }
        
        // Let's get started
        heap(scratch.count)
        
        // And return the result we built up
        return result
    }
    
   
    
    func getValueOnBaseN(number: [Int], base: Int) -> Int {
        let numbersCount = number.count
        
        var result: Int = 0
        var index: Int = 0
        
        for i in (0...numbersCount - 1).reversed() {
            let number = number[i]
            if number != 0 {
                let numberInBase = ((pow(Decimal(base), index) as NSDecimalNumber).intValue)*number
                result += numberInBase
            }
            index += 1
        }
        
        return result
    }
    
    
    /* CODE */
    
    func getHiddenNumbers(inputValues: [String]) {
        
        var caseNumber: Int = 1
        
        for input in inputValues {
            
            let arrayWithNumbers = input.generateArrayWithNumbers()
            
            var arrayPermuted = permute(items: arrayWithNumbers)
            
            arrayPermuted = arrayPermuted.filter { (value) -> Bool in
                return value.first != 0
            }
            
            var minValue: Int = 0
            var maxValue: Int = 0
            
            for permutation in arrayPermuted {
                let value = getValueOnBaseN(number: permutation, base: input.count)
                print(permutation, value)
                if arrayPermuted.first == permutation {
                    minValue = value
                    maxValue = value
                }
                else {
                    if maxValue < value { maxValue = value }
                    if minValue > value { minValue = value }
                }
            }
            
            print("Case #\(caseNumber): \(maxValue - minValue)")
            caseNumber += 1
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Test
//
//  Created by Piyu on 04/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let boolResult =  givenNumberThreeTimeOccureOrNot(mobilenumber: "9lf944552211")
        print("Number3TimeOccure : \(boolResult)")
        
        let duplicateVaue = findoutgetDuplicateNumberfromArray(number: "123456781234")
        print("DuplicateValues : \(duplicateVaue)")
        
        let uniqueValue = findUniqueNumberFromArray(number: "12345123")
        
        print("UniqueValues: \(uniqueValue)")


    }
    
    
    func givenNumberThreeTimeOccureOrNot(mobilenumber:String)->Bool{
        
        let array = mobilenumber.map({(String($0))})

        var testCount = [String:Int]()
  
        for curr in array {
            if let x = testCount[curr] {
                testCount[curr] = Int(x)  + 1
                continue
            }
            testCount[curr] = 1
        }
        print("Repeated Number Count : \(testCount)")
        
        let values = testCount.filter({$0.value > 3})
        return  values.count > 0 ? true : false
       
        
    }
    
    
    func findoutgetDuplicateNumberfromArray(number:String) -> Any{
        let array = number.map({(String($0))})
        let dups = Dictionary(grouping: array, by: {$0}).filter{$1.count > 1}.keys
        return dups
    }
    
    func findUniqueNumberFromArray(number:String) -> Any{
        let array = number.map({(String($0))})
        let unique = Array(Set(array))
        return unique
    }


}


